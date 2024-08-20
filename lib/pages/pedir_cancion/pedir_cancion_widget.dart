import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pedir_cancion_model.dart';
export 'pedir_cancion_model.dart';

class PedirCancionWidget extends StatefulWidget {
  /// Pedir Canción
  const PedirCancionWidget({super.key});

  @override
  State<PedirCancionWidget> createState() => _PedirCancionWidgetState();
}

class _PedirCancionWidgetState extends State<PedirCancionWidget> {
  late PedirCancionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PedirCancionModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: Color(0xFFC00000),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: Color(0x003E3131),
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Pedir Canción',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: FlutterFlowWebView(
                        content:
                            'https://servercast.duckdns.org/public/euforia_radio/embed-requests?theme=light',
                        bypass: false,
                        height: 748.0,
                        verticalScroll: false,
                        horizontalScroll: false,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
