import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class NovoAnuncioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextTituloAnuncio widget.
  TextEditingController? textTituloAnuncioController;
  String? Function(BuildContext, String?)? textTituloAnuncioControllerValidator;
  String? _textTituloAnuncioControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite um titulo para o anuncio';
    }

    if (val.length < 5) {
      return 'Digite no minimo 5 caracteres';
    }
    if (val.length > 50) {
      return 'Maximo de caracterers (50)';
    }

    return null;
  }

  // State field(s) for RadioInteresse widget.
  FormFieldController<String>? radioInteresseValueController;
  // State field(s) for area widget.
  TextEditingController? areaController;
  String? Function(BuildContext, String?)? areaControllerValidator;
  String? _areaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o tamanho da area em Ha (hectare)';
    }

    if (val.length < 2) {
      return 'Verifique o numero digitado';
    }
    if (val.length > 20) {
      return 'Verifique o numero digitado';
    }

    return null;
  }

  // State field(s) for valor widget.
  TextEditingController? valorController;
  String? Function(BuildContext, String?)? valorControllerValidator;
  String? _valorControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite um valor';
    }

    if (val.length < 5) {
      return 'Verifique o valor';
    }
    if (val.length > 40) {
      return 'Verifique o valor';
    }

    return null;
  }

  // State field(s) for valor_area widget.
  TextEditingController? valorAreaController;
  String? Function(BuildContext, String?)? valorAreaControllerValidator;
  // State field(s) for CheckCaracteristiscas widget.
  List<String>? checkCaracteristiscasValues;
  FormFieldController<List<String>>? checkCaracteristiscasValueController;
  // State field(s) for CheckAptidao widget.
  List<String>? checkAptidaoValues;
  FormFieldController<List<String>>? checkAptidaoValueController;
  // State field(s) for CheckSolo widget.
  List<String>? checkSoloValues;
  FormFieldController<List<String>>? checkSoloValueController;
  // State field(s) for TextDescricao widget.
  TextEditingController? textDescricaoController;
  String? Function(BuildContext, String?)? textDescricaoControllerValidator;
  String? _textDescricaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite a descrição';
    }

    if (val.length < 10) {
      return 'Digite a descrição';
    }

    return null;
  }

  // State field(s) for TextTelefone widget.
  TextEditingController? textTelefoneController;
  final textTelefoneMask = MaskTextInputFormatter(mask: '(##) #.####-####');
  String? Function(BuildContext, String?)? textTelefoneControllerValidator;
  String? _textTelefoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite seu telefone';
    }

    if (val.length < 11) {
      return 'Telefone invalido';
    }
    if (val.length > 11) {
      return 'Telefone invalido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textTituloAnuncioControllerValidator =
        _textTituloAnuncioControllerValidator;
    areaControllerValidator = _areaControllerValidator;
    valorControllerValidator = _valorControllerValidator;
    textDescricaoControllerValidator = _textDescricaoControllerValidator;
    textTelefoneControllerValidator = _textTelefoneControllerValidator;
  }

  void dispose() {
    textTituloAnuncioController?.dispose();
    areaController?.dispose();
    valorController?.dispose();
    valorAreaController?.dispose();
    textDescricaoController?.dispose();
    textTelefoneController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioInteresseValue => radioInteresseValueController?.value;
}
