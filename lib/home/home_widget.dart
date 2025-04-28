import 'package:auto_size_text/auto_size_text.dart';
import '../components/botn_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(),
        child: HomeWidgetStack(), // Ensure this component is correctly defined and doesn't require additional parameters.
      ),
    );
  }
}

class HomeWidgetStack extends StatelessWidget {
  const HomeWidgetStack({
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
            height: MediaQuery.of(context).size.height * 0.85,
            decoration: BoxDecoration(),
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ),
              child: Image.asset(
                'assets/images/fondo1.webp',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
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
            height: MediaQuery.of(context).size.height * 0.85,
            decoration: BoxDecoration(),
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ),
              child: Image.asset(
                'assets/images/fondoipad1.webp',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
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
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(),
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ),
              child: Image.asset(
                'assets/images/fondo1-mobile2.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.contain,
              ),
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
            height: MediaQuery.of(context).size.height * 0.85,
            alignment: AlignmentDirectional(-0.6, -0.2),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.54,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
  if (responsiveVisibility(
    context: context,
    phone: false,
    tablet: false,
    tabletLandscape: false,
  ))
    AutoSizeText(
      'The coat check at your fingertips',
      maxLines: 2,
      style: FlutterFlowTheme.of(context).title1.override(
        fontFamily: FlutterFlowTheme.of(context).title1Family,
        color: FlutterFlowTheme.of(context).secondaryText,
        useGoogleFonts: GoogleFonts.asMap().containsKey(
          FlutterFlowTheme.of(context).title1Family,
        ),
      ),
    ),
  Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.05,
    decoration: BoxDecoration(),
  ),
  if (responsiveVisibility(
    context: context,
    desktop: true,
  ))
    SizedBox(height: 75.0), // Add 50px space only on desktop
  Text(
    'Store your claim ticket on your phone !',
    style: FlutterFlowTheme.of(context).title3,
  ),
  Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.05,
    decoration: BoxDecoration(),
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
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Uncomment and edit if this widget is required
                        // Container(
                        //   width: MediaQuery.of(context).size.width * 0.25,
                        //   height: MediaQuery.of(context).size.height * 0.05,
                        //   decoration: BoxDecoration(),
                        //   child: BotnWidgetWidget(
                        //     title: 'Get started',
                        //   ),
                        // ),
                        Align(
                          alignment: AlignmentDirectional(-1, -0.15),
                          child: Text(
                            'The coat check \nat your fingertips',
                            style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: FlutterFlowTheme.of(context).title1Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).title1Family
                              ),
                            ),
                          ),
                        ),
                       // AutoSizeText(
                        //  'Store your claim ticket on your phone!',
                        //  maxLines: 1,
                       //   style: FlutterFlowTheme.of(context).title3,
                       // ),
                      ],
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
            height: MediaQuery.of(context).size.height * 0.85,
            alignment: AlignmentDirectional(-0.85, 0.8),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          desktop: false,
                        ))
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'The coat check at your fingertips',
                              style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: FlutterFlowTheme.of(context).title1Family,
                                color: FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title1Family
                                ),
                              ),
                            ),
                          ),
                        Text(
                          'Store your claim ticket on your phone !',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        // Uncomment and edit if this widget is required
                        // Container(
                        //   width: MediaQuery.of(context).size.width * 0.25,
                        //   height: MediaQuery.of(context).size.height * 0.04,
                        //   decoration: BoxDecoration(),
                        //   child: BotnWidgetWidget(
                        //     title: 'Get started',
                        //   ),
                        // ),
                      ],
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
