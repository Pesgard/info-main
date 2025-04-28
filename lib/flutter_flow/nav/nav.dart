import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page_q_r/footer/footer_widget.dart';
import 'package:landing_page_q_r/flutter_flow/flutter_flow_theme.dart';
import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
          routes: [
            FFRoute(
                name: 'HomePage',
                path: 'homePage',
                builder: (context, params) => HomePageWidget()),
            FFRoute(
                name: 'Menu',
                path: 'menu',
                builder: (context, params) => MenuWidget()),
            FFRoute(
                name: 'HOME',
                path: 'home',
                builder: (context, params) => HomeWidget()),
            FFRoute(
                name: 'ABOUTQRCOATS',
                path: 'aboutqrcoats',
                builder: (context, params) => AboutqrcoatsWidget()),
            FFRoute(
                name: 'WEBAPP',
                path: 'webapp',
                builder: (context, params) => WebappWidget()),
            FFRoute(
                name: 'TESTIMONIALS',
                path: 'testimonials',
                builder: (context, params) => TestimonialsWidget()),
            // FFRoute(name: 'TESTIMONIALS2', path: 'testimonials2', builder: (context, params) => Testimonials2Widget()),
            FFRoute(
                name: 'FAQ',
                path: 'faq',
                builder: (context, params) => FaqWidget()),
            FFRoute(
                name: 'CONTACTUS',
                path: 'contactus',
                builder: (context, params) => ContactusWidget()),
            FFRoute(
                name: 'FOOTER',
                path: 'footer',
                builder: (context, params) => FooterStack())
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      //redirigir siempre a /info
      redirect: (context, state) {
        return"/info";
      },
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(String paramName, ParamType type, [bool isList = false]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    if (param is! String) {
      return param;
    }
    return deserializeParam<T>(param, type, isList);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;
          return MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}
