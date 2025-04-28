import 'package:auto_size_text/auto_size_text.dart';
import '../components/botn_widget_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebappWidget extends StatefulWidget {
  const WebappWidget({Key? key}) : super(key: key);

  @override
  _WebappWidgetState createState() => _WebappWidgetState();
}

class _WebappWidgetState extends State<WebappWidget> {
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
        child: WebAppStack(),
      ),
    );
  }
}

class WebAppStack extends StatelessWidget {
  const WebAppStack({
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
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/fondo2.webp',
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
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/fondoipad2.webp',
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
            margin: EdgeInsets.only(top: 25.0), // Adds 16 pixels of margin on the top
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/fondo2-mobile.png',
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
            height: MediaQuery.of(context).size.height * 1,
            child: Align(
              alignment: AlignmentDirectional(0.8, 0.15),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Get invaluable insights',
                   //   maxLines: 2,
                      style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: FlutterFlowTheme.of(context).title1Family,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        lineHeight: 1,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title1Family
                        ),
                      ),
                    ),
                    AutoSizeText(
                      'Know your clientele better thanks to our wide set of analytics, such as average length of stay, arrival/departure times, real-time occupancy levels and much, much more!',
                      maxLines: 3,
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).subtitle2Family
                        ),
                      ),
                    ),
                    // Uncomment the following if needed
                    // Container(
                    //   width: MediaQuery.of(context).size.width * 0.1,
                    //   height: MediaQuery.of(context).size.height * 0.06,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: BotnWidgetWidget(
                    //     title: 'Get started',
                    //   ),
                    // ),
                  ],
                ),
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
            height: MediaQuery.of(context).size.height * 1,
            alignment: AlignmentDirectional(0, 0.9),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Get invaluable insights',
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).title1Family
                      ),
                    ),
                  ),
                  AutoSizeText(
                    'Know your clientele better thanks to our wide set of analytics, such as average length of stay, arrival/departure times, real-time occupancy levels and much, much more!',
                    maxLines: 3,
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).subtitle2Family
                          ),
                        ),
                  ),
                  // Uncomment the following if needed
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.25,
                  //   height: MediaQuery.of(context).size.height * 0.05,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50),
                  //   ),
                  //   child: BotnWidgetWidget(
                  //     title: 'Get started',
                  //   ),
                  // ),
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
            height: MediaQuery.of(context).size.height * 0.60,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 5),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Get invaluable insights',
                      style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: FlutterFlowTheme.of(context).title1Family,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).title1Family,
                        ),
                      ),
                    ),
                  ),

                  Transform.translate(
  offset: Offset(0, -40), // Moves the widget 40 pixels up
  child: AutoSizeText(
    'Know your clientele better thanks to our wide set of analytics, such as average length of stay, arrival/departure times, real-time occupancy levels and much, much more!',
    style: FlutterFlowTheme.of(context).subtitle2.override(
      fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
      useGoogleFonts: GoogleFonts.asMap().containsKey(
        FlutterFlowTheme.of(context).subtitle2Family,
      ),
    ),
  ),
),
                  // Uncomment the following if needed
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.25,
                  //   height: MediaQuery.of(context).size.height * 0.04,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50),
                  //   ),
                  //   child: BotnWidgetWidget(
                  //     title: 'Get started',
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
