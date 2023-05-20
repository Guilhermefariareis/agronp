import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TelaCadastroCorretorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite seu nome completo';
    }

    if (val.length < 15) {
      return 'Digite no minimo 15  caracteres';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite um email valido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Digite um email valido';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController3;
  final textFieldMask1 = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite um creci valido';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite a sigla de seu estado';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 2) {
      return 'Maximum 2 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for senha widget.
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  String? _senhaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Porfavor use uma senha com mais de 6 caracteres';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for senha_check widget.
  TextEditingController? senhaCheckController;
  late bool senhaCheckVisibility;
  String? Function(BuildContext, String?)? senhaCheckControllerValidator;
  String? _senhaCheckControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    senhaVisibility = false;
    senhaControllerValidator = _senhaControllerValidator;
    senhaCheckVisibility = false;
    senhaCheckControllerValidator = _senhaCheckControllerValidator;
  }

  void dispose() {
    nomeController?.dispose();
    emailController?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    senhaController?.dispose();
    senhaCheckController?.dispose();
  }

  /// Additional helper methods are added here.

}
