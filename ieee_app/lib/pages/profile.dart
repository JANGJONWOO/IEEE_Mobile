import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'profile_page_model.dart';
export 'profile_page_model.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({super.key});

  static String routeName = 'profilePage';
  static String routePath = '/profilePage';

  @override
  State<ProfilePageWidget> createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  late ProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePageModel());

    _model.switchValue1 = true;
    _model.switchValue2 = true;
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
        backgroundColor: FlutterFlowTheme.of(context).info,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 10),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 235.7,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF00203F), Color(0xFF00203F)],
                        stops: [0, 1],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(
                                      context,
                                    ).secondaryBackground,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(
                                  '',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'USER',
                            style: FlutterFlowTheme.of(
                              context,
                            ).headlineSmall.override(
                              fontFamily: 'Inter Tight',
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'youremail@domain.com',
                            style: FlutterFlowTheme.of(
                              context,
                            ).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Color(0xFFE0E0E0),
                              letterSpacing: 0.0,
                            ),
                          ),
                        ].divide(SizedBox(height: 16)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Edit Profile',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  size: 24,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.notifications_none,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Notifications',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Switch(
                                  value: _model.switchValue1!,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.switchValue1 = newValue!,
                                    );
                                  },
                                  activeColor: Color(0xFF00203F),
                                  activeTrackColor: Color(0xFF8B9AA9),
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.language,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Language',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Text(
                                  'English',
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.workspace_premium,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Certificates',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  size: 24,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.card_membership,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Membership',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  size: 24,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.security,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Security',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  size: 24,
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.dark_mode,
                                      color: Color(0xFF00203F),
                                      size: 24,
                                    ),
                                    Text(
                                      'Theme',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Switch(
                                  value: _model.switchValue2!,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                      () => _model.switchValue2 = newValue!,
                                    );
                                  },
                                  activeColor: Color(0xFF00203F),
                                  activeTrackColor:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.logout,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 24,
                                    ),
                                    Text(
                                      'Log Out',
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyLarge.override(
                                        fontFamily: 'Inter',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 24,
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 24)),
            ),
          ),
        ),
      ),
    );
  }
}
