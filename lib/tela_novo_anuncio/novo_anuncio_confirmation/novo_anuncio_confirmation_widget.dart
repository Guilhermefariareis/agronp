import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'novo_anuncio_confirmation_model.dart';
export 'novo_anuncio_confirmation_model.dart';

class NovoAnuncioConfirmationWidget extends StatefulWidget {
  const NovoAnuncioConfirmationWidget({Key? key}) : super(key: key);

  @override
  _NovoAnuncioConfirmationWidgetState createState() =>
      _NovoAnuncioConfirmationWidgetState();
}

class _NovoAnuncioConfirmationWidgetState
    extends State<NovoAnuncioConfirmationWidget> {
  late NovoAnuncioConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoAnuncioConfirmationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFF00770B),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Novo Anuncio',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: Image.asset(
                'assets/images/West-Sussex-England-landscape-grass-fence-farm-sheep_1680x1050.jpg',
              ).image,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xF3FFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0x55FFFFFF),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.black,
                          borderRadius: 30.0,
                          borderWidth: 2.0,
                          buttonSize: 50.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.mode_edit,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('novo_anuncio');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.black,
                          borderRadius: 30.0,
                          borderWidth: 2.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.image_rounded,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.black,
                          borderRadius: 30.0,
                          borderWidth: 2.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.location_pin,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.black,
                          borderRadius: 30.0,
                          borderWidth: 2.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.credit_card,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      'Termos de aceite',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                    child: Container(
                      width: 100.0,
                      height: 627.3,
                      decoration: BoxDecoration(
                        color: Color(0x0B101213),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Text(
                            'Termos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\nTermos de aceite.\n',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              35.0, 0.0, 10.0, 15.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('novo_anuncioImagens');
                            },
                            text: 'Confirmar',
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF047918),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
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
