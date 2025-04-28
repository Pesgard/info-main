import 'package:auto_size_text/auto_size_text.dart';
import '../components/botn_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialsWidget extends StatefulWidget {
  const TestimonialsWidget({Key? key}) : super(key: key);

  @override
  _TestimonialsWidgetState createState() => _TestimonialsWidgetState();
}

class _TestimonialsWidgetState extends State<TestimonialsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: TestiminialsStack(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TestiminialsStack extends StatelessWidget {
  const TestiminialsStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // DESKTOP IMAGE
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/fondo3.webp',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        // TABLET IMAGE
        if (responsiveVisibility(
          context: context,
          phone: false,
          desktop: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/fondoipad3.webp',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        // MOBILE IMAGE
        if (responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/fondo3.webp',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        // DESKTOP TEXT
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional(-0.75, 0.1),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Optimized for \nEmployee Usage',
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                          lineHeight: 1,
                        ),
                  ),
                  AutoSizeText(
                      'Employees simply pick a hanger, scan the client’s code and store their jacket. That’s it.',
                      maxLines: 3,
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).subtitle2Family
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        // TABLET TEXT
        if (responsiveVisibility(
          context: context,
          phone: false,
          desktop: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional(0, 0.85),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.26,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Optimized for Employee Usage',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                          lineHeight: 1,
                        ),
                  ),
                  Text(
                    'Employees simply pick a hanger, scan the client’s code and store their jacket. That’s it.\n',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).subtitle2Family),
                          lineHeight: 1,
                        ),
                  ),
                ],
              ),
            ),
          ),
        // MOBILE TEXT
        if (responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.40,
            margin: const EdgeInsets.only(top: 10.0, bottom: 40.0),
            alignment: AlignmentDirectional(-0.75, 0.8),
            padding: EdgeInsets.only(top: 80),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Optimized for \nEmployee Usage',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          color: Colors.white,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                          lineHeight: 1,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      'Employees simply pick a hanger, scan the client’s code and store their jacket. That’s it.\n',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                            color: Colors.white,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle2Family),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
