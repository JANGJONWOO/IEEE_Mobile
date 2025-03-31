import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'sign_u_p_page_model.dart';
export 'sign_u_p_page_model.dart';

class SignUPPageWidget extends StatefulWidget {
  const SignUPPageWidget({super.key});

  static String routeName = 'SignUP_page';
  static String routePath = '/signUPPage';

  @override
  State<SignUPPageWidget> createState() => _SignUPPageWidgetState();
}

class _SignUPPageWidgetState extends State<SignUPPageWidget> {
  late SignUPPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUPPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: FlutterFlowIconButton(
                          borderRadius: 20,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFF00203F),
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/IEEE_logo.jpg',
                              width: 233.6,
                              height: 238.7,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'IEEE-VESIT',
                          style: FlutterFlowTheme.of(
                            context,
                          ).headlineMedium.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF00203F),
                            fontSize: 32,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Create your account',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF161C24),
                      fontSize: 22,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextFormField(
                              controller: _model.textController1,
                              focusNode: _model.textFieldFocusNode1,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Enter your username',
                                hintStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF0F5F9),
                                prefixIcon: Icon(Icons.person_outline),
                              ),
                              style: FlutterFlowTheme.of(
                                context,
                              ).bodyLarge.override(
                                fontFamily: 'Manrope',
                                color: Color(0xFF161C24),
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                              minLines: 1,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Email',
                                hintStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF0F5F9),
                                prefixIcon: Icon(Icons.mail_outline),
                              ),
                              style: FlutterFlowTheme.of(
                                context,
                              ).bodyLarge.override(
                                fontFamily: 'Manrope',
                                color: Color(0xFF161C24),
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                              minLines: 1,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              autofocus: false,
                              obscureText: !_model.passwordVisibility1,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Password',
                                hintStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF0F5F9),
                                prefixIcon: Icon(Icons.lock_outline),
                                suffixIcon: InkWell(
                                  onTap:
                                      () => safeSetState(
                                        () =>
                                            _model.passwordVisibility1 =
                                                !_model.passwordVisibility1,
                                      ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility1
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF636F81),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(
                                context,
                              ).bodyLarge.override(
                                fontFamily: 'Manrope',
                                color: Color(0xFF161C24),
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                              minLines: 1,
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.textController4,
                              focusNode: _model.textFieldFocusNode4,
                              autofocus: false,
                              obscureText: !_model.passwordVisibility2,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Confirm Password',
                                hintStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFF161C24),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF0F5F9),
                                prefixIcon: Icon(Icons.lock_outline),
                                suffixIcon: InkWell(
                                  onTap:
                                      () => safeSetState(
                                        () =>
                                            _model.passwordVisibility2 =
                                                !_model.passwordVisibility2,
                                      ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility2
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF636F81),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(
                                context,
                              ).bodyLarge.override(
                                fontFamily: 'Manrope',
                                color: Color(0xFF161C24),
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                              minLines: 1,
                              validator: _model.textController4Validator
                                  .asValidator(context),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Register',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width,
                      height: 50,
                      padding: EdgeInsets.all(8),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFF00203F),
                      textStyle: FlutterFlowTheme.of(
                        context,
                      ).titleMedium.override(
                        fontFamily: 'Manrope',
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '— Or Register with —',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: Color(0xFF636F81),
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Button',
                        options: FFButtonOptions(
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(
                            context,
                          ).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ].divide(SizedBox(height: 24)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: Color(0xFF636F81),
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8,
                        buttonSize: 40,
                        fillColor: Color(0xFF00203F),
                        icon: Icon(
                          Icons.login_sharp,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24,
                        ),
                        onPressed: () async {},
                      ),
                    ].divide(SizedBox(width: 4)),
                  ),
                ].divide(SizedBox(height: 24)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
