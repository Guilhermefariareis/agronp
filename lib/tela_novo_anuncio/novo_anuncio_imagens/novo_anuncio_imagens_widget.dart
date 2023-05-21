import 'dart:io';

import 'package:image_picker/image_picker.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'novo_anuncio_imagens_model.dart';
export 'novo_anuncio_imagens_model.dart';

class NovoAnuncioImagensWidget extends StatefulWidget {
  const NovoAnuncioImagensWidget({Key? key}) : super(key: key);

  @override
  _NovoAnuncioImagensWidgetState createState() =>
      _NovoAnuncioImagensWidgetState();
}

class _NovoAnuncioImagensWidgetState extends State<NovoAnuncioImagensWidget> {
  late NovoAnuncioImagensModel _model;

  ImagePicker imagePicker = ImagePicker();

  XFile? imagemSelecionada;

  List<XFile> _imageList = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoAnuncioImagensModel());
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
                          borderColor: Color(0xFF036514),
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
                          borderColor: FlutterFlowTheme.of(context).black600,
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
                      'Fotos',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Container(
                    height: 64.0,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: Icon(
                            Icons.warning_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                        Text(
                          'Atenção! Use fotos reais do local.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 19.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, -1),
                    child: ListTile(
                      title: Text(
                        'Enviar Foto',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge,
                      ),
                      leading: Icon(
                        Icons.upload,
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                      onTap: selecionarFoto,
                      trailing: Icon(
                        Icons.upload,
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 233.3,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF047918),
                        width: 2,
                      ),
                    ),
                    child: Expanded(
                      child: GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            //      mainAxisSpacing: 1,
                            // childAspectRatio: 1,
                          ),
                          itemCount: _imageList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Stack(
                                children: [
                                  Image.file(
                                    File(_imageList[index].path),
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    right: 20,
                                    child: Container(
                                      color: Color.fromRGBO(255, 255, 244, 0.2),
                                      child: IconButton(
                                        onPressed: () {
                                          _imageList.removeAt(index);
                                          setState(() {});
                                        },
                                        icon: Icon(Icons.delete),
                                        color: Colors.red[500],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.95),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('novo_anuncioDemarcar');
                        },
                        text: 'Continuar',
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF036514),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
            ),
          ),
        ),
      ),
    );
  }

  selecionarFoto() async {
    final XFile? imagemTemporaria =
        // ignore: deprecated_member_use
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (imagemTemporaria!.path.isNotEmpty) {
      _imageList.add(imagemTemporaria);
    }
    setState(() {});
  }
}
