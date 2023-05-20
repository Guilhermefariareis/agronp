import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TelaEditCadastroCorretorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nome widget.
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for creci widget.
  TextEditingController? creciController;
  String? Function(BuildContext, String?)? creciControllerValidator;
  // State field(s) for TextEstado widget.
  TextEditingController? textEstadoController;
  String? Function(BuildContext, String?)? textEstadoControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  final textFieldMask = MaskTextInputFormatter(mask: '(##) #.####-####');
  String? Function(BuildContext, String?)? textController5Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeController?.dispose();
    emailController?.dispose();
    creciController?.dispose();
    textEstadoController?.dispose();
    textController5?.dispose();
  }

  /// Additional helper methods are added here.

}
