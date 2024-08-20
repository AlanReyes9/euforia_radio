import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'video_en_vivo_model.dart';
export 'video_en_vivo_model.dart';

class VideoEnVivoWidget extends StatefulWidget {
  /// En Vivo
  const VideoEnVivoWidget({super.key});

  @override
  State<VideoEnVivoWidget> createState() => _VideoEnVivoWidgetState();
}

class _VideoEnVivoWidgetState extends State<VideoEnVivoWidget> {
  late VideoEnVivoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoEnVivoModel());

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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: Color(0xFFCC0000),
          automaticallyImplyLeading: true,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.chevron_left_outlined,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Euforia Radio En Vivo',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: FlutterFlowWebView(
                                content:
                                    'https://euforiaradio.duckdns.org/dd8665ef-e78b-4270-a077-2769d6bd11a2.html',
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: 245.0,
                                verticalScroll: false,
                                horizontalScroll: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowWebView(
                            content:
                                'https://chatroll.com/embed/chat/euforia;jsessionid=1d762q8m9ed3wb868uzxatplu16415961?id=_fo_Pf--MAn',
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 500.0,
                            verticalScroll: false,
                            horizontalScroll: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
