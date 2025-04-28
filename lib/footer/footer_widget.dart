import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterStack extends StatelessWidget {
  const FooterStack({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;


    final double paddingLeft = screenWidth * 0.15;
    final double paddingTop = screenWidth * 0.05;
    final double paddingRight = screenWidth * 0.05;
    final double paddingBottom = screenWidth * 0.05;

    final containerWidth = screenWidth * 1.00;

    return Column(
      children: [
        // Main footer content for desktop
        if (screenWidth > 600) ...[
          Container(
            padding: EdgeInsets.only(
              left: paddingLeft,
              top: paddingTop,
              right: paddingRight,
              bottom: paddingBottom,
            ), // Set different padding values
            width: containerWidth,
            color: Color(0xFF3D495F),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute evenly
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Column 1: Useful Links
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Useful Links',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: FlutterFlowTheme.of(context).title3Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title3Family),
                            ),
                      ),
                      SizedBox(height: 10.0),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () async {
                            const url = 'https://qrcoats.com';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // Handle the error if the URL can't be launched
                              print("Could not launch $url");
                            }
                          },
                          child: Text(
                            'Venues',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                     //         decoration: TextDecoration.underline,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () async {
                            const url = 'https://qrcoats.com/employees';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // Handle the error if the URL can't be launched
                              print("Could not launch $url");
                            }
                          },
                          child: Text(
                            'Employees',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                   //           decoration: TextDecoration.underline,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () async {
                            const url = 'https://qrcoats.com/admin';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // Handle the error if the URL can't be launched
                              print("Could not launch $url");
                            }
                          },
                          child: Text(
                            'Admin',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                          //        decoration: TextDecoration.underline,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ),
                        ),

                    ],
                  ),
                ),
                // Column 2: Legal Aspects
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Legal',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: FlutterFlowTheme.of(context).title3Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title3Family),
                            ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Privacy Policy',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                      Text(
                        'Terms and Conditions',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                    ],
                  ),
                ),
                // Column 3: Contact Us
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: FlutterFlowTheme.of(context).title3Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title3Family),
                            ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/phone.svg',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            '+1 (438) 838-6087',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/email.svg',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'info@qrcoats.com',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/question.svg',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'support@qrcoats.com',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        // Footer content for mobile
        if (screenWidth <= 600) ...[
          Container(
            width: double.infinity,
            color: Color(0xFF3D495F),
            padding: const EdgeInsets.only(top: 35.0, bottom: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
              children: [
                // Column 1: Useful Links
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center content within column
                    children: [
                      Text(
                        'Useful Links',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: FlutterFlowTheme.of(context).title3Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title3Family),
                            ),
                      ),
                      SizedBox(height: 10.0),
                      InkWell(
                        onTap: () async {
                          const url = 'https://qrcoats.com'; // Replace with your URL
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Text(
                          'Venues',
                          style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                       //       decoration: TextDecoration.underline,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://qrcoats.com/employees'; // Replace with your URL
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Text(
                          'Employees',
                          style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                       //       decoration: TextDecoration.underline,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://admin.qrcoats.com'; // Replace with your URL
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Text(
                          'Admin',
                          style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                     //         decoration: TextDecoration.underline,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Column 2: Legal Aspects
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center content within column
                    children: [
                      Text(
                        'Legal',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: FlutterFlowTheme.of(context).title3Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title3Family),
                            ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Privacy Policy',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                      Text(
                        'Terms and Conditions',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
                    ],
                  ),
                ),
                // Column 3: Contact Us
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center content within column
                    children: [
                      Text(
                        'Contact Us',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: FlutterFlowTheme.of(context).title3Family,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title3Family),
                            ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisSize: MainAxisSize.min, // Center horizontally within column
                        children: [
                          SvgPicture.asset(
                            'assets/images/phone.svg',
                            color: Colors.white,
                            height: 18.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            '+1 (438) 838-6087',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisSize: MainAxisSize.min, // Center horizontally within column
                        children: [
                          SvgPicture.asset(
                            'assets/images/email.svg',
                            color: Colors.white,
                            height: 18.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'info@qrcoats.com',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisSize: MainAxisSize.min, // Center horizontally within column
                        children: [
                          SvgPicture.asset(
                            'assets/images/question.svg',
                            color: Colors.white,
                            height: 18.0,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'support@qrcoats.com',
                            style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                              color: FlutterFlowTheme.of(context).primaryText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        // Footer statement
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            '© 2024 | Powered by QR Coats Inc. | All rights reserved.',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText1Family),
                ),
          ),
        ),
      ],
    );
  }
}