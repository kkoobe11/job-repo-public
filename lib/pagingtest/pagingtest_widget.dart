import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class PagingtestWidget extends StatefulWidget {
  const PagingtestWidget({Key key}) : super(key: key);

  @override
  _PagingtestWidgetState createState() => _PagingtestWidgetState();
}

class _PagingtestWidgetState extends State<PagingtestWidget> {
  ApiCallResponse call2;
  ApiCallResponse call3;
  String dropDownValue1;
  String dropDownValue2;
  TextEditingController textController;
  ApiCallResponse call;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      call = await ApplicantQueryCall.call(
        sortby: dropDownValue1,
        orderby: dropDownValue2,
        page: 1,
        perPage: 12,
      );
      setState(() => FFAppState().prevPage = getJsonField(
            (call?.jsonBody ?? ''),
            r'''$.prevPage''',
          ));
      setState(() => FFAppState().nextPage = getJsonField(
            (call?.jsonBody ?? ''),
            r'''$.nextPage''',
          ));
      setState(() => FFAppState().curPage = getJsonField(
            (call?.jsonBody ?? ''),
            r'''$.curPage''',
          ));
    });

    textController = TextEditingController(text: functions.getUrl());
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 0),
                      child: FlutterFlowDropDown(
                        initialOption: dropDownValue1 ??= 'name',
                        options: ['name', 'position', 'dept', 'status'],
                        onChanged: (val) =>
                            setState(() => dropDownValue1 = val),
                        width: 180,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        hintText: 'Please select...',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                    FlutterFlowDropDown(
                      initialOption: dropDownValue2 ??= 'asc',
                      options: ['asc', 'desc'],
                      onChanged: (val) => setState(() => dropDownValue2 = val),
                      width: 180,
                      height: 50,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      hintText: 'Please select...',
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if ((FFAppState().prevPage != null))
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFAppState().prevPage.toString(),
                      options: FFButtonOptions(
                        width: 100,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFAppState().curPage.toString(),
                    options: FFButtonOptions(
                      width: 100,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
                  FFButtonWidget(
                    onPressed: () async {
                      call3 = await ApplicantQueryCall.call(
                        sortby: dropDownValue1,
                        orderby: dropDownValue2,
                        page: FFAppState().nextPage,
                        perPage: 5,
                      );
                      setState(() => FFAppState().prevPage = getJsonField(
                            (call3?.jsonBody ?? ''),
                            r'''$.prevPage''',
                          ));
                      setState(() => FFAppState().nextPage = getJsonField(
                            (call3?.jsonBody ?? ''),
                            r'''$.nextPage''',
                          ));
                      setState(() => FFAppState().curPage = getJsonField(
                            (call3?.jsonBody ?? ''),
                            r'''$.curPage''',
                          ));

                      setState(() {});
                    },
                    text: FFAppState().nextPage.toString(),
                    options: FFButtonOptions(
                      width: 100,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
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
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        call2 = await ApplicantQueryCall.call(
                          sortby: dropDownValue1,
                          orderby: dropDownValue2,
                          page: 1,
                          perPage: 12,
                        );
                        setState(() => FFAppState().prevPage = getJsonField(
                              (call2?.jsonBody ?? ''),
                              r'''$.prevPage''',
                            ));
                        setState(() => FFAppState().nextPage = getJsonField(
                              (call2?.jsonBody ?? ''),
                              r'''$.nextPage''',
                            ));
                        setState(() => FFAppState().curPage = getJsonField(
                              (call2?.jsonBody ?? ''),
                              r'''$.curPage''',
                            ));

                        setState(() {});
                      },
                      text: 'api call',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                  ],
                ),
              ),
              TextFormField(
                controller: textController,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[Some hint text...]',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
