import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'codigode_confirmacao_email_model.dart';
export 'codigode_confirmacao_email_model.dart';

class CodigodeConfirmacaoEmailWidget extends StatefulWidget {
  const CodigodeConfirmacaoEmailWidget({Key? key}) : super(key: key);

  @override
  _CodigodeConfirmacaoEmailWidgetState createState() =>
      _CodigodeConfirmacaoEmailWidgetState();
}

class _CodigodeConfirmacaoEmailWidgetState
    extends State<CodigodeConfirmacaoEmailWidget> {
  late CodigodeConfirmacaoEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodigodeConfirmacaoEmailModel());

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
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'jaloqeq7' /* Confirme seu Código */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Rubik',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(44.0, 20.0, 44.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2qiinjmt' /* Confira em sua caixa de Email ... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Rubik',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: PinCodeTextField(
                      autoDisposeControllers: false,
                      appContext: context,
                      length: 4,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Rubik',
                                color: FlutterFlowTheme.of(context).white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      enablePinAutofill: true,
                      errorTextSpace: 16.0,
                      showCursor: true,
                      cursorColor: Colors.black,
                      obscureText: false,
                      hintCharacter: '-',
                      keyboardType: TextInputType.visiblePassword,
                      pinTheme: PinTheme(
                        fieldHeight: 70.0,
                        fieldWidth: 70.0,
                        borderWidth: 2.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: PinCodeFieldShape.box,
                        activeColor: Colors.black,
                        inactiveColor: Colors.black,
                        selectedColor: Colors.black,
                        activeFillColor: Colors.black,
                        inactiveFillColor: Colors.black,
                        selectedFillColor: Colors.black,
                      ),
                      controller: _model.pinCodeController,
                      onChanged: (_) {},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: _model.pinCodeControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 200.0),
              child: FFButtonWidget(
                onPressed: () async {
                  _model.apiResult2wl = await EmailCodeCall.call();
                  if ((_model.apiResult2wl?.succeeded ?? true)) {
                    context.pushNamed('AlterarSenha');
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text(
                              'Código Inválido ou Indevidamente Digitado:'),
                          content: Text(
                              'Tente Novamente Digitar o Código, Confira em Sua Caixa de Email e Digite Novamente.'),
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
                  '59ucl2x2' /* Confirmar e Continuar */,
                ),
                options: FFButtonOptions(
                  width: 330.0,
                  height: 80.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFFF1F4F8),
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                  elevation: 15.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
