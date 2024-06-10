import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'front_page_model.dart';
export 'front_page_model.dart';

class FrontPageWidget extends StatefulWidget {
  const FrontPageWidget({
    super.key,
    this.imagepath,
  });

  final FFUploadedFile? imagepath;

  @override
  State<FrontPageWidget> createState() => _FrontPageWidgetState();
}

class _FrontPageWidgetState extends State<FrontPageWidget> {
  late FrontPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrontPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE2982D),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Be Aware',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to the ANWB app!',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF666666),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Stay informed about traffic, weather, and more.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF666666),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.73,
                decoration: BoxDecoration(
                  color: Color(0xFFE2982D),
                ),
                child: FlutterFlowSwipeableStack(
                  onSwipeFn: (index) {},
                  onLeftSwipe: (index) {},
                  onRightSwipe: (index) {},
                  onUpSwipe: (index) {},
                  onDownSwipe: (index) {},
                  itemBuilder: (context, index) {
                    return [
                      () => Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(6.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/iPhone_14_&_15_Pro_-_1_(1).png',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/iPhone_14_&_15_Pro_-_2_(1).png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                    ][index]();
                  },
                  itemCount: 2,
                  controller: _model.swipeableStackController,
                  loop: false,
                  cardDisplayCount: 2,
                  scale: 0.9,
                  cardPadding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 16.0, 8.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                'AppPage',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                            text: 'Get Started',
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 72.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF1E57E3),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
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
