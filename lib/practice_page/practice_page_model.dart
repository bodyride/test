import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class PracticePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool word1Active = false;

  bool word2Active = false;

  bool word3Active = false;

  bool word4Active = false;

  bool word5Active = false;

  bool? danish1Match = false;

  bool? danish2Match = false;

  bool? danish3Match = false;

  bool? danish4Match = false;

  bool? danish5Match = false;

  bool? english1Match = false;

  bool? english2Match = false;

  bool? english3Match = false;

  bool? english4Match = false;

  bool? english5Match = false;

  bool? english1Visible = true;

  bool? english2Visible = true;

  bool? english3Visible = true;

  bool? english4Visible = true;

  bool? english5Visible = true;

  bool? danish1Visible = true;

  bool? danish2Visible = true;

  bool? danish3Visible = true;

  bool? danish4Visible = true;

  bool? danish5Visible = true;

  String? matchWord;

  bool? enableEnglishButtons = true;

  String? correctWord = ' ';

  bool? danish1NotMatch = false;

  bool? danish2NotMatch = false;

  bool? danish3NotMatch = false;

  bool? danish4NotMatch = false;

  bool? danish5NotMatch = false;

  bool? english1NotMatch = false;

  bool? english2NotMatch = false;

  bool? english3NotMatch = false;

  bool? english4NotMatch = false;

  bool? english5NotMatch = false;

  String? danishSentence = ' ';

  String? englishSentence = ' ';

  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

/// Additional helper methods are added here.
  //Custom code Start

  AudioPlayer? soundPlayer;

  //Custom code End

}
