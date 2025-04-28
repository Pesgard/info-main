import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    // Determine if we are on mobile or desktop based on width
    bool isMobile = MediaQuery.of(context).size.width <= 600;

    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 40,
        ),
        automaticallyImplyLeading: false, // Ensure no leading icon is implied
      ),
      body: isMobile ? MobileView() : MenuHorizontal(),
    );
  }
}

class MenuHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Desktop view
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.07,
                height: 100,
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                'HOME',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'ABOUT QR COATS',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'WEB APP',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'FAQ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'CONTACT US',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
             children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                   fit: BoxFit.contain,
                 ),
                ),
             ],
            ),
        ),
          // No additional menu items displayed in mobile view
        ],
      ),
    );
  }
}
