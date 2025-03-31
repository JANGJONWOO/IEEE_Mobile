import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_pag_model.dart';
export 'home_pag_model.dart';

/// a little horizontal carousel for resouces, resize the bigger one to look
/// good and the remaining thing bus have a box ith round corners ith title
/// "announcements"
class HomePagWidget extends StatefulWidget {
  const HomePagWidget({super.key});

  static String routeName = 'HomePag';
  static String routePath = '/homePag';

  @override
  State<HomePagWidget> createState() => _HomePagWidgetState();
}

class _HomePagWidgetState extends State<HomePagWidget> {
  late HomePagModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePagModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 363.56,
                height: 248.6,
                decoration: BoxDecoration(
                  color: Color(0xFFDBDBDB),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/769/600',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/255/600',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/938/600',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    carouselController:
                        _model.carouselController1 ??=
                            CarouselSliderController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.5,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.25,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: false,
                      onPageChanged:
                          (index, _) => _model.carouselCurrentIndex1 = index,
                    ),
                  ),
                ),
              ),
              Container(
                width: 399.1,
                height: 17.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Container(
                width: 381.32,
                height: 27.2,
                decoration: BoxDecoration(
                  color: Color(0xE7C3BFBF),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(18),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Resources',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: 399.1,
                height: 17.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Container(
                width: 361.8,
                height: 82.1,
                decoration: BoxDecoration(
                  color: Color(0xFFDEDEDE),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/27/600',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/352/600',
                          width: 119.8,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://picsum.photos/seed/529/600',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    carouselController:
                        _model.carouselController2 ??=
                            CarouselSliderController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.5,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.25,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: false,
                      onPageChanged:
                          (index, _) => _model.carouselCurrentIndex2 = index,
                    ),
                  ),
                ),
              ),
              Container(
                width: 399.1,
                height: 17.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Container(
                width: 339,
                height: 358.8,
                decoration: BoxDecoration(
                  color: Color(0xFFBDBDBD),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, -0.9),
                  child: Text(
                    'Announcements',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
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

class CarouselSliderController {}

class FlutterFlowTheme {
  static of(BuildContext context) {}
}
