import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotnWidgetWidget extends StatefulWidget {
  const BotnWidgetWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  _BotnWidgetWidgetState createState() => _BotnWidgetWidgetState();
}

class _BotnWidgetWidgetState extends State<BotnWidgetWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 21,
            color: Color(0x80BA67F7),
            offset: Offset(7, 7),
          )
        ],
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).customColor1,
            FlutterFlowTheme.of(context).customColor2
          ],
          stops: [0, 1],
          begin: AlignmentDirectional(1, 0),
          end: AlignmentDirectional(-1, 0),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Text(
          widget.title!,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                color: FlutterFlowTheme.of(context).secondaryText,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
              ),
        ),
      ),
    );
  }
}
