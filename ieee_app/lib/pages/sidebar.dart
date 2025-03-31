import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'sidebar_model.dart';
export 'sidebar_model.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({super.key});

  static String routeName = 'sidebar';
  static String routePath = '/sidebar';

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  late SidebarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarModel());
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
        drawer: Drawer(
          elevation: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Color(0xFF00203F)),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Color(0xFF00203F)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.card_membership,
                        color: Color(0xFF00203F),
                      ),
                      title: Text(
                        'Membership',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          color: Color(0xFF00203F),
                          letterSpacing: 0.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryText,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        12,
                        5,
                        12,
                        5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(Icons.menu_book, color: Color(0xFF00203F)),
                      title: Text(
                        'Certificate',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          color: Color(0xFF00203F),
                          letterSpacing: 0.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryText,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        12,
                        5,
                        12,
                        5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.account_balance_sharp,
                        color: Color(0xFF00203F),
                      ),
                      title: Text(
                        'About IEEE',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          color: Color(0xFF00203F),
                          letterSpacing: 0.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryText,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        12,
                        5,
                        12,
                        5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_page_sharp,
                        color: Color(0xFF00203F),
                      ),
                      title: Text(
                        'Contact Us',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          color: Color(0xFF00203F),
                          letterSpacing: 0.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryText,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        12,
                        5,
                        12,
                        5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        Icons.family_restroom,
                        color: Color(0xFF00203F),
                      ),
                      title: Text(
                        'About Council',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          color: Color(0xFF00203F),
                          letterSpacing: 0.0,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryText,
                      dense: false,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        12,
                        5,
                        12,
                        5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF00203F),
          automaticallyImplyLeading: true,
          title: Text(
            'IEEE-VESIT',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Inter Tight',
              color: FlutterFlowTheme.of(context).primaryText,
              fontSize: 25,
              letterSpacing: 0.0,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
      ),
    );
  }
}
