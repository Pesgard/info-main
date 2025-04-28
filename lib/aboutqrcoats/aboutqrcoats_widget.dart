import 'package:auto_size_text/auto_size_text.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutqrcoatsWidget extends StatefulWidget {
  const AboutqrcoatsWidget({Key? key}) : super(key: key);

  @override
  _AboutqrcoatsWidgetState createState() => _AboutqrcoatsWidgetState();
}

class _AboutqrcoatsWidgetState extends State<AboutqrcoatsWidget> {
  late final PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: 0);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: AboutStack(pageViewController: pageViewController),
    );
  }
}

class AboutStack extends StatelessWidget {
  final PageController pageViewController;

  AboutStack({Key? key, required this.pageViewController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'The most simple and advanced \ncoatcheck solution out there!',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: FlutterFlowTheme.of(context).title3Family,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        useGoogleFonts: GoogleFonts.asMap()
                            .containsKey(FlutterFlowTheme.of(context).title3Family),
                      ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildFeatureColumn(
                        context,
                        'touch.svg',
                        'No installation or account needed',
                        'QR Coats being a web-app, clients just go to qrcoats.com or scan a QR code that redirects them to the order page right away.',
                      ),
                      buildFeatureColumn(
                        context,
                        'tiket.svg',
                        'No more lost tickets',
                        'The claim ticket being a QR code, it can be either saved or sent to a friend! Clients who sign up will also be reminded whenever they forget their coat.',
                      ),
                      buildFeatureColumn(
                        context,
                        'happy.svg',
                        'Happier customers',
                        'Our wait-in-line-pay-online feature allows lines to move faster like never before, allowing clients to get to the bar quicker and start buying drinks earlier.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        if (responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.725,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'The most simple and advanced \ncoatcheck solution out there!',
                  style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: FlutterFlowTheme.of(context).title3Family,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).title3Family),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: BoxDecoration(),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageViewController,
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildFeaturePage(
                              context,
                              'touch.svg',
                              'No installation or account needed',
                              'QR Coats being a web-app, clients just go to qrcoats.com or scan a QR code that redirects them to the order page right away.',
                            ),
                            buildFeaturePage(
                              context,
                              'tiket.svg',
                              'No more lost tickets',
                              'The claim ticket being a QR code, it can be either saved or sent to a friend! Clients who sign up will also be reminded whenever they forget their coat.',
                            ),
                            buildFeaturePage(
                              context,
                              'happy.svg',
                              'Happier customers',
                              'Our wait-in-line-pay-online feature allows lines to move faster like never before, allowing clients to get to the bar quicker and start buying drinks earlier.',
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: pageViewController,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: smooth_page_indicator.ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 5,
                                radius: 16,
                                dotWidth: 7,
                                dotHeight: 7,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor: Color(0xFF3F51B5),
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildFeatureColumn(BuildContext context, String asset, String title, String description) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).customColor4,
                  FlutterFlowTheme.of(context).customColor5
                ],
                stops: [0, 1],
                begin: AlignmentDirectional(-1, 0.64),
                end: AlignmentDirectional(1, -0.64),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.04,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset(
                    'assets/images/$asset',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
              color: FlutterFlowTheme.of(context).secondaryText,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFeaturePage(BuildContext context, String asset, String title, String description) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.27,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).customColor4,
                  FlutterFlowTheme.of(context).customColor5
                ],
                stops: [0, 1],
                begin: AlignmentDirectional(-1, 0.64),
                end: AlignmentDirectional(1, -0.64),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset(
                    'assets/images/$asset',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
              color: FlutterFlowTheme.of(context).secondaryText,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).subtitle2Family,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
