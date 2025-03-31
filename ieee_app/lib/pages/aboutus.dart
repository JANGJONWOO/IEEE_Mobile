import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'aboutus_model.dart';
export 'aboutus_model.dart';

class AboutusWidget extends StatefulWidget {
  const AboutusWidget({super.key});

  static String routeName = 'aboutus';
  static String routePath = '/aboutus';

  @override
  State<AboutusWidget> createState() => _AboutusWidgetState();
}

class _AboutusWidgetState extends State<AboutusWidget> {
  late AboutusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutusModel());
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Container(
                    width: 200,
                    height: 250,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/ieee_vesit_black-DsPgAX9k.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                  child: Container(
                    width: 300,
                    height: 325,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: AutoSizeText(
                        'IEEE stands for Institute of Electrical and Electronics Engineers. Here at IEEE-VESIT, we conduct many technical workshops as well as fun events and seminars, maintaining the balance between academics and co-curricular activities. Being the perfect blend of hardware and software, IEEE-VESIT covers a huge cloud of domains in which students can build their career. The faculty and student council works hand-in-hand and the legacy is carried forward. IEEE-VESIT also boasts about international membership which allows students to get guidance right from selecting the topic to write a research paper on until the paper is published in the international IEEE magazines. IEEE-VESIT is one umbrella society that you require in your engineering life! Be it workshops, seminars, fun events, placements, masters, technical paper presentations, etc, IEEE-VESIT has it all!',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
