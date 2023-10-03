import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'tela_inicial_olympus_pass_model.dart';
export 'tela_inicial_olympus_pass_model.dart';

class TelaInicialOlympusPassWidget extends StatefulWidget {
  const TelaInicialOlympusPassWidget({Key? key}) : super(key: key);

  @override
  _TelaInicialOlympusPassWidgetState createState() =>
      _TelaInicialOlympusPassWidgetState();
}

class _TelaInicialOlympusPassWidgetState
    extends State<TelaInicialOlympusPassWidget> with TickerProviderStateMixin {
  late TelaInicialOlympusPassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaInicialOlympusPassModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF09AD35),
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'l84e86iz' /* Olympus Pass */,
            ),
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 35.0,
                borderWidth: 1.0,
                buttonSize: 70.0,
                icon: Icon(
                  Icons.menu_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 40.0,
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
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF09AD35),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 12.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x1F000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Color(0xFF0C0D0F),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF0C0D0F),
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFF09AD35),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Icon(
                                                Icons.group_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'velwahri' /* Check-ins Realizados */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 15.0,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  formatNumber(
                                                    random_data.randomInteger(
                                                        0, 99),
                                                    formatType:
                                                        FormatType.custom,
                                                    format: '0',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 12.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x1F000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: Color(0xFF0C0D0F),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF040405),
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFF09AD35),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Icon(
                                                Icons.contacts,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'm8j0b2d8' /* Vencimento do Plano */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 15.0,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                    'd/M',
                                                    random_data.randomDate(),
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'ez1cfsx2' /* Clique Aqui Para Entrar na Aca... */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Rubik',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 30.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        width: 240.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.apiResultp0p =
                                await CheckinRequestCall.call();
                            if ((_model.apiResultp0p?.jsonBody ?? '')) {
                              context.pushNamed('SucessoCheckin');
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Erro ao Realizar Checkin'),
                                    content: Text(
                                        'Ocorreu um erro ao realizar checkin, tente novamente.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                            setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            '1wx9b2qm' /* Fazer Check-in */,
                          ),
                          options: FFButtonOptions(
                            width: 210.0,
                            height: 55.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF09AD35),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Rubik',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 6.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 20.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'MeusTreinos',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                          ),
                        },
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1F000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 8.0, 16.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'o5t6vn1d' /* Meus Treinos */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'eax25p7m' /* Acompanhe Aqui Seus Treinos! */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF040405),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFF09AD35),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: Icon(
                                            Icons.folder_open_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: LinearPercentIndicator(
                                  percent: 0.8,
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.82,
                                  lineHeight: 16.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor: Color(0xFF09AD35),
                                  backgroundColor: Color(0xC61B1B1B),
                                  barRadius: Radius.circular(24.0),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'MinhaConta',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                          ),
                        },
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1F000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 8.0, 16.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'b7wt5ym1' /* Minha Conta */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5zcxfs5j' /* Acompanhe Sua Conta Aqui! */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF040405),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFF09AD35),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: Icon(
                                            Icons.desktop_windows_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: LinearPercentIndicator(
                                  percent: 0.5,
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.82,
                                  lineHeight: 16.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor: Color(0xFF09AD35),
                                  backgroundColor: Color(0xC61B1B1B),
                                  barRadius: Radius.circular(24.0),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 10.0, 30.0),
                    child: Container(
                      width: 370.0,
                      height: 230.0,
                      child: FlutterFlowBarChart(
                        barData: [
                          FFBarChartData(
                            yData: List.generate(
                                random_data.randomInteger(0, 0),
                                (index) => random_data.randomInteger(0, 10)),
                            color: Color(0xFF09AD35),
                          )
                        ],
                        xLabels: List.generate(random_data.randomInteger(0, 0),
                                (index) => random_data.randomInteger(0, 10))
                            .map((e) => e.toString())
                            .toList(),
                        barWidth: 40.0,
                        barBorderRadius: BorderRadius.circular(8.0),
                        groupSpace: 20.0,
                        chartStylingInfo: ChartStylingInfo(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          showBorder: false,
                        ),
                        axisBounds: AxisBounds(),
                        xAxisLabelInfo: AxisLabelInfo(
                          title: FFLocalizations.of(context).getText(
                            'fmd7mxax' /* Dias da Semana */,
                          ),
                          titleTextStyle: GoogleFonts.getFont(
                            'Rubik',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        yAxisLabelInfo: AxisLabelInfo(
                          title: FFLocalizations.of(context).getText(
                            '541wbgjg' /* Checkins */,
                          ),
                          titleTextStyle: GoogleFonts.getFont(
                            'Rubik',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
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
