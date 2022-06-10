import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddApplicantWidget extends StatefulWidget {
  const AddApplicantWidget({Key key}) : super(key: key);

  @override
  _AddApplicantWidgetState createState() => _AddApplicantWidgetState();
}

class _AddApplicantWidgetState extends State<AddApplicantWidget> {
  ApiCallResponse submit;
  String uploadedFileUrl = '';
  String departmentValue;
  TextEditingController nameController;
  TextEditingController positionController;
  String dropDownValue;
  TextEditingController commentsController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    commentsController = TextEditingController();
    nameController = TextEditingController();
    positionController = TextEditingController();
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
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1A1A1A),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: Image.asset(
                                          'assets/images/34rbv_6.png',
                                        ).image,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 25, 0, 50),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            100,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          width: MediaQuery.of(context)
                                                                              .size
                                                                              .width,
                                                                          height:
                                                                              150,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            image:
                                                                                DecorationImage(
                                                                              fit: BoxFit.cover,
                                                                              image: Image.asset(
                                                                                'assets/images/image_(6).png',
                                                                              ).image,
                                                                            ),
                                                                          ),
                                                                        ),
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
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'homefeed',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            0),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            text: 'Dashboard',
                                                            icon: Icon(
                                                              Icons.dashboard,
                                                              size: 15,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 100,
                                                              height: 40,
                                                              color: Color(
                                                                  0xFF1A1A1A),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFE6E6E6),
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                              borderRadius: 5,
                                                            ),
                                                            showLoadingIndicator:
                                                                false,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'appplicantList',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            0),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            text:
                                                                'Applicant list',
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .clipboardList,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130,
                                                              height: 40,
                                                              color: Color(
                                                                  0xFF1A1A1A),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFE6E6E6),
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                              borderRadius: 5,
                                                            ),
                                                            showLoadingIndicator:
                                                                false,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'addApplicant',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .bottomToTop,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            500),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            text:
                                                                'Add Applicant',
                                                            icon: Icon(
                                                              Icons.add,
                                                              size: 15,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 130,
                                                              height: 40,
                                                              color: Color(
                                                                  0xFF1A1A1A),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFFE6E6E6),
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                              borderRadius: 5,
                                                            ),
                                                            showLoadingIndicator:
                                                                false,
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
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 150),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed('login');
                                                  },
                                                  text: 'Log-out',
                                                  icon: Icon(
                                                    Icons.logout,
                                                    size: 15,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 160,
                                                    height: 40,
                                                    color: Color(0xFFFD8972),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFE6E6E6),
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                    ),
                                                    borderRadius: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 190, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  250, 0, 250, 0),
                                          child: TextFormField(
                                            controller: nameController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'nameController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'name',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              hintText: 'enter your name here',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF1A1A1A),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF1A1A1A),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  250, 0, 250, 0),
                                          child: TextFormField(
                                            controller: positionController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'positionController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Position',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              hintText:
                                                  'Enter applicant\'s position',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF1A1A1A),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF1A1A1A),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  250, 0, 250, 0),
                                          child: FlutterFlowDropDown(
                                            options: [
                                              'Accomodations',
                                              'Finance',
                                              'Human Resource',
                                              'Marketing',
                                              'Tech',
                                              'Ventures'
                                            ],
                                            onChanged: (val) => setState(
                                                () => departmentValue = val),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: 45,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                    ),
                                            hintText:
                                                'Please select a department...',
                                            fillColor: Colors.white,
                                            elevation: 2,
                                            borderColor: Color(0xFF1A1A1A),
                                            borderWidth: 0,
                                            borderRadius: 0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            hidesUnderline: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  250, 0, 250, 0),
                                          child: FlutterFlowDropDown(
                                            initialOption: dropDownValue ??=
                                                'New',
                                            options: [
                                              'New',
                                              'Hired',
                                              'Interviewed',
                                              'Rejected'
                                            ],
                                            onChanged: (val) => setState(
                                                () => dropDownValue = val),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.48,
                                            height: 45,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                    ),
                                            hintText: 'Please select...',
                                            fillColor: Colors.white,
                                            elevation: 2,
                                            borderColor: Color(0xFF1A1A1A),
                                            borderWidth: 0,
                                            borderRadius: 0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            hidesUnderline: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  250, 0, 250, 0),
                                          child: TextFormField(
                                            controller: commentsController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'commentsController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Comments',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              hintText: 'display comments here',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF1A1A1A),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF1A1A1A),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            textAlign: TextAlign.start,
                                            maxLines: 7,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 1, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          final selectedFile = await selectFile(
                                              allowedExtensions: ['pdf']);
                                          if (selectedFile != null) {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            final downloadUrl =
                                                await uploadData(
                                                    selectedFile.storagePath,
                                                    selectedFile.bytes);
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            if (downloadUrl != null) {
                                              setState(() => uploadedFileUrl =
                                                  downloadUrl);
                                              showUploadMessage(
                                                context,
                                                'Success!',
                                              );
                                            } else {
                                              showUploadMessage(
                                                context,
                                                'Failed to upload file',
                                              );
                                              return;
                                            }
                                          }

                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Success'),
                                                content:
                                                    Text('File is uploaded'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        text: 'Upload Resume',
                                        options: FFButtonOptions(
                                          width: 300,
                                          height: 40,
                                          color: Color(0xFFFD8972),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF1A1A1A),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          submit = await ApplicantsCall.call(
                                            authToken: valueOrDefault<String>(
                                              FFAppState().Authorization,
                                              'eyJhbGciOiJBMjU2S1ciLCJlbmMiOiJBMjU2Q0JDLUhTNTEyIiwiemlwIjoiREVGIn0.PTY7TWfx2OCOU8wlp-5j7jNb1P25hYcGZP-7PEd2m6uTHCcAoYyX1FJUgpF6WY4-1VJdAlXxGCRB4CoXvadPGn0H2hArrYNH.OgX31smMIZYrLQE068IdcA.23wKnwzgIAROlxe1v8AHiQ3F2WrtcuF2q3roNMnQT8JB8qxm7UqPALWeOsX_4jhFhz3kgWWZTNkCTWdMZWBp6NmS6JGtsWYIGYex6xX5FyhY6qI3NjgyKUMH_anVb01aO8RiHSWXhnqGDjSz_7n26A.v-acfLeEBQMJQkAnAe3csWZSCx0_WOQbdal2cidVvyA',
                                            ),
                                            name: nameController.text,
                                            position: positionController.text,
                                            cv: uploadedFileUrl,
                                            status: dropDownValue,
                                            comment: commentsController.text,
                                            dept: departmentValue,
                                          );
                                          if ((submit?.succeeded ?? true)) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Success'),
                                                  content: Text('Success'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Failed'),
                                                  content: Text('Not sent'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }

                                          setState(() {
                                            nameController?.clear();
                                            positionController?.clear();
                                            commentsController?.clear();
                                          });

                                          setState(() {});
                                        },
                                        text: 'Submit',
                                        options: FFButtonOptions(
                                          width: 300,
                                          height: 40,
                                          color: Color(0xFFFD8972),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF1A1A1A),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
