import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sucesso_alterar_senha_model.dart';
export 'sucesso_alterar_senha_model.dart';

class SucessoAlterarSenhaWidget extends StatefulWidget {
  const SucessoAlterarSenhaWidget({Key? key}) : super(key: key);

  @override
  _SucessoAlterarSenhaWidgetState createState() =>
      _SucessoAlterarSenhaWidgetState();
}

class _SucessoAlterarSenhaWidgetState extends State<SucessoAlterarSenhaWidget> {
  late SucessoAlterarSenhaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessoAlterarSenhaModel());

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
        backgroundColor: Color(0xFF09AD35),
        appBar: AppBar(
          backgroundColor: Color(0xFF09AD35),
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'p2lyz85e' /* Parabéns!! */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'tt1ti9tw' /* Sua Senha Foi Atualizada com S... */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Rubik',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                              ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(35.0, 0.0, 35.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'it724yn6' /* Agora você deve realizar login... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Rubik',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 250.0),
              child: FFButtonWidget(
                onPressed: () async {
                  // TelaInicialAfterConfirmation

                  context.pushNamed(
                    'TelaInicialOlympusPass',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 600),
                      ),
                    },
                  );
                },
                text: FFLocalizations.of(context).getText(
                  '5iztkby4' /* Ir Para Home */,
                ),
                options: FFButtonOptions(
                  width: 290.0,
                  height: 65.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                  elevation: 15.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
