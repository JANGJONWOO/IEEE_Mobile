import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'contactus_model.dart';
export 'contactus_model.dart';

class ContactusWidget extends StatefulWidget {
  const ContactusWidget({super.key});

  static String routeName = 'contactus';
  static String routePath = '/contactus';

  @override
  State<ContactusWidget> createState() => _ContactusWidgetState();
}

class _ContactusWidgetState extends State<ContactusWidget> {
  late ContactusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactusModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.contactNoTextController ??= TextEditingController();
    _model.contactNoFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.messageTextController ??= TextEditingController();
    _model.messageFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: Color(0xFF00203F),
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/ieee_vesit_black-DsPgAX9k.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'IEEE-VESIT',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Inter Tight',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Inter Tight',
                      color: Color(0xFF00203F),
                      letterSpacing: 0.0,
                      shadows: [
                        Shadow(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          child: Container(
                            width: 200,
                            height: 200,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/GreshaBhatia-sRTdo0zW.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(65, 0, 0, 0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          child: Container(
                            width: 200,
                            height: 200,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/AshwiniSawant-DnwxeOka.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                        child: Text(
                          'Dr. Gresha Bhatia\nDeputy HOD\nCMPN Department\ngresha.bhatia@ves.ac.in',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(
                            context,
                          ).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Color(0xFF00203F),
                            fontSize: 15,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: Text(
                          'Dr. Ashwini Sawant\nAsst. Professor\nEXTC Department\nashwini.sawant@ves.ac.in',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(
                            context,
                          ).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Color(0xFF00203F),
                            fontSize: 15,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          child: Container(
                            width: 200,
                            height: 200,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/GAURANG_RANE-BFTkBQQT.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(65, 0, 0, 0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          child: Container(
                            width: 200,
                            height: 200,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              'assets/images/Anoushka_Menon_secretary-CiM5uXfP-min.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                        child: Text(
                          'Gaurang Rane\nChairperson\n9867615388\n2021.gaurang.rane@ves.ac.in',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(
                            context,
                          ).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Color(0xFF00203F),
                            fontSize: 12,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                        child: Text(
                          'Anoushka Menon\nCEO\n7506570413\n2021.anoushka.menon@ves.ac.in',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(
                            context,
                          ).titleSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Color(0xFF00203F),
                            fontSize: 12,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
                        child: Text(
                          'Email Us',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(
                            context,
                          ).headlineSmall.override(
                            fontFamily: 'Inter Tight',
                            color: Color(0xFF00203F),
                            letterSpacing: 0.0,
                            shadows: [
                              Shadow(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Send Message',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Color(0xFF00203F),
                          letterSpacing: 0.0,
                          shadows: [
                            Shadow(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: Container(
                                width: 200,
                                child: TextFormField(
                                  controller: _model.nameTextController,
                                  focusNode: _model.nameFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelSmall.override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                    hintText: 'Name',
                                    hintStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).accent4,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).accent1,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).primaryText,
                                  ),
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.nameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: FlutterFlowDropDown<String>(
                                controller:
                                    _model.dropDownValueController1 ??=
                                        FormFieldController<String>(null),
                                options: ['Option 1', 'Option 2', 'Option 3'],
                                onChanged:
                                    (val) => safeSetState(
                                      () => _model.dropDownValue1 = val,
                                    ),
                                width: 200,
                                height: 40,
                                textStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                                hintText: 'Year',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 8,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                  12,
                                  0,
                                  12,
                                  0,
                                ),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: FlutterFlowDropDown<String>(
                                controller:
                                    _model.dropDownValueController2 ??=
                                        FormFieldController<String>(null),
                                options: ['Option 1', 'Option 2', 'Option 3'],
                                onChanged:
                                    (val) => safeSetState(
                                      () => _model.dropDownValue2 = val,
                                    ),
                                width: 200,
                                height: 40,
                                textStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                                hintText: 'Branch',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  size: 24,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 8,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                  12,
                                  0,
                                  12,
                                  0,
                                ),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: Container(
                                width: 200,
                                child: TextFormField(
                                  controller: _model.contactNoTextController,
                                  focusNode: _model.contactNoFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                    hintText: 'Contact No.',
                                    hintStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).primaryText,
                                  ),
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .contactNoTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: Container(
                                width: 200,
                                child: TextFormField(
                                  controller: _model.emailTextController,
                                  focusNode: _model.emailFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                    hintText: 'Email',
                                    hintStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).primaryText,
                                  ),
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.emailTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: Container(
                                width: 200,
                                child: TextFormField(
                                  controller: _model.messageTextController,
                                  focusNode: _model.messageFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                    hintText: 'Message',
                                    hintStyle: FlutterFlowTheme.of(
                                      context,
                                    ).labelMedium.override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).primaryText,
                                  ),
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                                  maxLines: 5,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .messageTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                10,
                                0,
                                0,
                              ),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Submit',
                                options: FFButtonOptions(
                                  height: 40,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    16,
                                    0,
                                    16,
                                    0,
                                  ),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0,
                                    0,
                                    0,
                                    0,
                                  ),
                                  color: Color(0xFF00203F),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
