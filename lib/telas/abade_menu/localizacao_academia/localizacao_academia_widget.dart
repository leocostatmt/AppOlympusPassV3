import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'localizacao_academia_model.dart';
export 'localizacao_academia_model.dart';

class LocalizacaoAcademiaWidget extends StatefulWidget {
  const LocalizacaoAcademiaWidget({Key? key}) : super(key: key);

  @override
  _LocalizacaoAcademiaWidgetState createState() =>
      _LocalizacaoAcademiaWidgetState();
}

class _LocalizacaoAcademiaWidgetState extends State<LocalizacaoAcademiaWidget> {
  late LocalizacaoAcademiaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocalizacaoAcademiaModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitWave(
              color: Color(0xFF09AD35),
              size: 50.0,
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF09AD35),
        appBar: AppBar(
          backgroundColor: Color(0xFF09AD35),
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 100.0,
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 45.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'Menu',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 600),
                    ),
                  },
                );
              },
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '96yzkbgj' /* Localização da Academia */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'oa8e5015' /* Nosso Endereço */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Rubik',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 30.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'gmeoo324' /* R. Min. Raphael de Barros Mont... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Rubik',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Builder(builder: (context) {
                    final _googleMapMarker = currentUserLocationValue;
                    return FlutterFlowGoogleMap(
                      controller: _model.googleMapsController,
                      onCameraIdle: (latLng) =>
                          _model.googleMapsCenter = latLng,
                      initialLocation: _model.googleMapsCenter ??=
                          LatLng(-23.5028911, -46.8697073),
                      markers: [
                        if (_googleMapMarker != null)
                          FlutterFlowMarker(
                            _googleMapMarker.serialize(),
                            _googleMapMarker,
                          ),
                      ],
                      markerColor: GoogleMarkerColor.red,
                      mapType: MapType.satellite,
                      style: GoogleMapStyle.dark,
                      initialZoom: 18.0,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: true,
                      showCompass: false,
                      showMapToolbar: false,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 70.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL('https://waze.com/ul/h6gydm3w8p');
                  },
                  text: FFLocalizations.of(context).getText(
                    'mpm0qxio' /* Obter Rota no Mapa */,
                  ),
                  options: FFButtonOptions(
                    width: 350.0,
                    height: 70.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 20.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
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
