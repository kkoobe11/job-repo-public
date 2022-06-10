import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingpageWidget extends StatefulWidget {
  const LandingpageWidget({Key key}) : super(key: key);

  @override
  _LandingpageWidgetState createState() => _LandingpageWidgetState();
}

class _LandingpageWidgetState extends State<LandingpageWidget> {
  ApiCallResponse result;
  ApiCallResponse userresult;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Message'),
            content: Text('Success! You are able to log in using magic link '),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(900, 500, 500, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    result = await MagicLoginCall.call(
                      token: functions.getUrl1(),
                    );
                    setState(() => FFAppState().authToken = getJsonField(
                          (result?.jsonBody ?? ''),
                          r'''$''',
                        ).toString());
                    userresult = await AuthMeCall.call(
                      authToken: FFAppState().authToken,
                    );
                    setState(() =>
                        FFAppState().userInfo = (userresult?.jsonBody ?? ''));
                    setState(
                        () => FFAppState().pageurl = functions.getUrlCopy());
                    context.pushNamed('homefeed');

                    setState(() {});
                  },
                  text: 'Proceed to dashboard',
                  options: FFButtonOptions(
                    width: 300,
                    height: 70,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
