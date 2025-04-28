import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({Key? key}) : super(key: key);

  @override
  _FaqWidgetState createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
 String activeQuestion = ''; // Track the active question
 
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
      body: SingleChildScrollView(
        child: FaqStack(),
      ),
    );
  }
}

class FaqStack extends StatelessWidget {
  const FaqStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'FAQ',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: FlutterFlowTheme.of(context).title1Family,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).title1Family
                      ),
                    ),
              ),
              Text(
                'You have questions? We have answers!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).subtitle2Family
                  ),
                ), // Missing parenthesis added here
              ),
            ],
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'ADMIN',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: FlutterFlowTheme.of(context).subtitle1Family,
                      color: FlutterFlowTheme.of(context).customColor1,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).subtitle1Family
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: How can I add my own logo to the QR codes ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'In the “Profile” section, go to “My Logo”. You can change logo as much as you want, by simply uploading a white image with transparent background : this allows you to use personalized QR codes for every special occasion.',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: Is it possible to hide my venue from the venue’s list ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'It is recommended to keep it visible so that people who like this system can find other venues that have adopted it. If you still wish to not be visible here’s how to do it: after logging in with your administrator credentials, simply go to Profile > Settings and select the option “Hide from Venue’s List”.',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: Can I be billed on my effective month to month usage ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'The cost for the whole year is usually divided into equal monthly payments, but you can opt for variable bills if you prefer. Just send an email to info@qrcoats.com and we’ll be glad to accommodate you. ',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: What if I want to change or delete my plan ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'It is possible to change or delete your plan anytime. If you want to delete your plan, you will either receive a refund or be charged based on the number of coats that were hung during your time as our client. In case you choose another pricing option, you will be charged in accordance with you.',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'USER',
                      style: FlutterFlowTheme.of(context)
                          .subtitle1
                          .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .subtitle1Family,
                            color:
                                FlutterFlowTheme.of(context).customColor1,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .subtitle1Family),
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: What happens if a client loses their phone or the battery goes off ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'As soon as they receive their QR code, clients are shown the steps to follow if they ever run low on battery : send the code to a trusted friend that’s more likely to leave the club with them or simply turn off the phone and enjoy the night. \nMoreover, they can choose a code word : in this case, they will need to either upload a selfie or give an accurate description of their coat in order to prove they’re the real owners.\nAlternatively, they can create an account and the QR code will always be accessible from any mobile device. ',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: How are clients notified when they forget to retrieve their coat ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Clients are encouraged to create an account so they can receive by email the instructions to get their coat back.',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: Can someone else steal my coat ? ',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'If the venue is secure, then, absolutely not. QR codes being intrinsically unique to each individual use, nobody can ever show the same code as yours — unless you send them. As far as code words, clients are asked to give a specific description of their coat in case they decide not to upload a selfie. This way, no ill-intentioned person will ever be able to get a coat they don’t own. ',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: Having a QR code saved as an image isn’t the same as accepting photos of the claim ticket ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Short answer: no. By allowing clients to show a photo of their claim ticket, the venue exposes itself to a number of risks. For example, thieves can show the claim ticket they got from a previous night and pick whatever coat is there with that same number at any other night. Moreover, one can claim their coat once with a photo and, later with physical claim ticket at hand, pretend the coatcheck clerks gave their coat to somebody else and, thus, demand a compensation. In one way or another, it’s either the client or the venue — or both — who loses. ',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'EMPLOYEE',
                      style: FlutterFlowTheme.of(context)
                          .subtitle1
                          .override(
                            fontFamily: FlutterFlowTheme.of(context)
                                .subtitle1Family,
                            color:
                                FlutterFlowTheme.of(context).customColor1,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .subtitle1Family),
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: Can employees reuse the same coupon ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Every QR code is unique. Once a coat is returned, the code associated with it becomes invalid. No more ',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: What can I do if an employee pairs a QR code with the wrong hanger ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Every coatcheck has a designated account that acts as supervisor, with the ability to undo a pairing. If this happens, the clerk will be notified when scanning the code of the mismatched coat (the unpaired coat should be set aside until the owner comes back). An example can be: “The coat was removed from hanger #123 at 22:34”.',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
              Container(
                width: double.infinity,
                color: Color(0x00000000),
                child: ExpandableNotifier(
                  initialExpanded: false,
                  child: ExpandablePanel(
                    header: Text(
                      'Q: How are the hangers going to be numbered since QR Coats is a paperless solution ?',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                    collapsed: Container(),
                    expanded: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'One can either stick with their usual paper tickets, and keep the same ones till eternity, or opt for plastic tags, which are more durable and will never fall from their respective hanger. ',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .subtitle2Family),
                                ),
                          ),
                        ),
                      ],
                    ),
                    theme: ExpandableThemeData(
                      tapHeaderToExpand: true,
                      tapBodyToExpand: false,
                      tapBodyToCollapse: false,
                      headerAlignment:
                          ExpandablePanelHeaderAlignment.center,
                      hasIcon: true,
                      iconSize: 30,
                      iconColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: FlutterFlowTheme.of(context).customColor1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
