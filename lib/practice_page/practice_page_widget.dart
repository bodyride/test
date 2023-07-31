import 'dart:async';

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
import 'practice_page_model.dart';
export 'practice_page_model.dart';

class PracticePageWidget extends StatefulWidget {
  const PracticePageWidget({
    Key? key,
    String? mode,
  })  : this.mode = mode ?? 'new',
        super(key: key);

  final String mode;

  @override
  _PracticePageWidgetState createState() => _PracticePageWidgetState();
}

class _PracticePageWidgetState extends State<PracticePageWidget> {
  late PracticePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PracticePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      //Custom Code Start
      await loadValues();
      _model.soundPlayer ??= AudioPlayer();
      //Custom Code End
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
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
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Vocabiz',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFB8B6C8),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      widget.mode,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Dansk',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'English',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.danish1Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.danish1NotMatch = false;
                                      _model.danish2NotMatch = false;
                                      _model.danish3NotMatch = false;
                                      _model.danish4NotMatch = false;
                                      _model.danish5NotMatch = false;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;
                                      _model.word1Active = true;
                                      _model.word2Active = false;
                                      _model.word3Active = false;
                                      _model.word4Active = false;
                                      _model.word5Active = false;
                                      _model.correctWord =
                                          FFAppState().english1Correct;
                                    });
                                    _model.soundPlayer1 ??= AudioPlayer();
                                    if (_model.soundPlayer1!.playing) {
                                      await _model.soundPlayer1!.stop();
                                    }
                                    _model.soundPlayer1!.setVolume(1.0);
                                    _model.soundPlayer1!
                                        .setUrl(FFAppState().word1AudioPath)
                                        .then(
                                            (_) => _model.soundPlayer1!.play());
                                  },
                                  text: FFAppState().danish1,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.danish1Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.danish1NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else if (_model.word1Active) {
                                        return FlutterFlowTheme.of(context)
                                            .plumpPurple;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.danish2Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.danish1NotMatch = false;
                                      _model.danish2NotMatch = false;
                                      _model.danish3NotMatch = false;
                                      _model.danish4NotMatch = false;
                                      _model.danish5NotMatch = false;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;
                                      _model.word1Active = false;
                                      _model.word2Active = true;
                                      _model.word3Active = false;
                                      _model.word4Active = false;
                                      _model.word5Active = false;
                                      _model.correctWord =
                                          FFAppState().english2Correct;
                                    });
                                    _model.soundPlayer2 ??= AudioPlayer();
                                    if (_model.soundPlayer2!.playing) {
                                      await _model.soundPlayer2!.stop();
                                    }
                                    _model.soundPlayer2!.setVolume(1.0);
                                    _model.soundPlayer2!
                                        .setUrl(FFAppState().word2AudioPath)
                                        .then(
                                            (_) => _model.soundPlayer2!.play());
                                  },
                                  text: FFAppState().danish2,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.danish2Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.danish2NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else if (_model.word2Active) {
                                        return FlutterFlowTheme.of(context)
                                            .plumpPurple;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.danish3Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.danish1NotMatch = false;
                                      _model.danish2NotMatch = false;
                                      _model.danish3NotMatch = false;
                                      _model.danish4NotMatch = false;
                                      _model.danish5NotMatch = false;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;
                                      _model.word1Active = false;
                                      _model.word2Active = false;
                                      _model.word3Active = true;
                                      _model.word4Active = false;
                                      _model.word5Active = false;
                                      _model.correctWord =
                                          FFAppState().english3Correct;
                                    });
                                    _model.soundPlayer3 ??= AudioPlayer();
                                    if (_model.soundPlayer3!.playing) {
                                      await _model.soundPlayer3!.stop();
                                    }
                                    _model.soundPlayer3!.setVolume(1.0);
                                    _model.soundPlayer3!
                                        .setUrl(FFAppState().word3AudioPath)
                                        .then(
                                            (_) => _model.soundPlayer3!.play());
                                  },
                                  text: FFAppState().danish3,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.danish3Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.danish3NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else if (_model.word3Active) {
                                        return FlutterFlowTheme.of(context)
                                            .plumpPurple;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.danish4Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.danish1NotMatch = false;
                                      _model.danish2NotMatch = false;
                                      _model.danish3NotMatch = false;
                                      _model.danish4NotMatch = false;
                                      _model.danish5NotMatch = false;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;
                                      _model.word1Active = false;
                                      _model.word2Active = false;
                                      _model.word3Active = false;
                                      _model.word4Active = true;
                                      _model.word5Active = false;
                                      _model.correctWord =
                                          FFAppState().english4Correct;
                                    });
                                    _model.soundPlayer4 ??= AudioPlayer();
                                    if (_model.soundPlayer4!.playing) {
                                      await _model.soundPlayer4!.stop();
                                    }
                                    _model.soundPlayer4!.setVolume(1.0);
                                    _model.soundPlayer4!
                                        .setUrl(FFAppState().word4AudioPath)
                                        .then(
                                            (_) => _model.soundPlayer4!.play());
                                  },
                                  text: FFAppState().danish4,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.danish4Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.danish4NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else if (_model.word4Active) {
                                        return FlutterFlowTheme.of(context)
                                            .plumpPurple;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.danish5Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.danish1NotMatch = false;
                                      _model.danish2NotMatch = false;
                                      _model.danish3NotMatch = false;
                                      _model.danish4NotMatch = false;
                                      _model.danish5NotMatch = false;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;
                                      _model.word1Active = false;
                                      _model.word2Active = false;
                                      _model.word3Active = false;
                                      _model.word4Active = false;
                                      _model.word5Active = true;
                                      _model.correctWord =
                                          FFAppState().english5Correct;
                                    });
                                    _model.soundPlayer5 ??= AudioPlayer();
                                    if (_model.soundPlayer5!.playing) {
                                      await _model.soundPlayer5!.stop();
                                    }
                                    _model.soundPlayer5!.setVolume(1.0);
                                    _model.soundPlayer5!
                                        .setUrl(FFAppState().word5AudioPath)
                                        .then(
                                            (_) => _model.soundPlayer5!.play());
                                  },
                                  text: FFAppState().danish5,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.danish5Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.danish5NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else if (_model.word5Active) {
                                        return FlutterFlowTheme.of(context)
                                            .plumpPurple;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.english1Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.matchWord = FFAppState().english1;
                                    });
                                    //Custom code Start
                                    bool matched =  await onMatchWord();
                                    if (matched) {
                                      FFAppState().lastIndex =  FFAppState().lastIndex+1;
                                      _model.english1Match = true;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;

                                      Future.delayed(Duration(microseconds: 5000), () {
                                        _model.english1Visible = false;
                                        _model.danishSentence = "";
                                        _model.englishSentence = "";
                                      });
                                    } else {
                                      _model.english1NotMatch = true;
                                    }
                                    //Custom code End
                                  },
                                  text: FFAppState().english1,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.english1Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.english1NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.english2Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.matchWord = FFAppState().english2;
                                    });
                                    //Custom code Start
                                    bool matched =  await onMatchWord();
                                    if (matched) {
                                      FFAppState().lastIndex =  FFAppState().lastIndex+1;
                                      _model.english2Match = true;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;

                                      Future.delayed(Duration(microseconds: 5000), () {
                                        _model.english2Visible = false;
                                        _model.danishSentence = "";
                                        _model.englishSentence = "";
                                      });
                                    } else {
                                      setState(() {
                                        _model.english2NotMatch = true;
                                      });
                                    }
                                    //Custom code End
                                  },
                                  text: FFAppState().english2,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.english2Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.english2NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.english3Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.matchWord = FFAppState().english3;
                                    });
                                    //Custom code Start
                                    bool matched =  await onMatchWord();
                                    if (matched) {
                                      FFAppState().lastIndex =  FFAppState().lastIndex+1;
                                      _model.english3Match = true;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;

                                      Future.delayed(Duration(microseconds: 5000), () {
                                        _model.english3Visible = false;
                                        _model.danishSentence = "";
                                        _model.englishSentence = "";
                                      });
                                    } else {
                                      _model.english3NotMatch = true;
                                    }
                                    //Custom code End
                                  },
                                  text: FFAppState().english3,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.english3Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.english3NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.english4Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.matchWord = FFAppState().english4;
                                    });
                                    //Custom code Start
                                    bool matched =  await onMatchWord();
                                    if (matched) {
                                      FFAppState().lastIndex =  FFAppState().lastIndex+1;
                                      _model.english4Match = true;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;

                                      Future.delayed(Duration(microseconds: 5000), () {
                                        _model.english4Visible = false;
                                        _model.danishSentence = "";
                                        _model.englishSentence = "";
                                      });
                                    } else {
                                      _model.english4NotMatch = true;
                                    }
                                    //Custom code End
                                  },
                                  text: FFAppState().english4,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.english4Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.english4NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              child: Visibility(
                                visible: _model.english5Visible ?? true,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.matchWord = FFAppState().english5;
                                    });
                                    //Custom code Start
                                    bool matched =  await onMatchWord();
                                    if (matched) {
                                      FFAppState().lastIndex =  FFAppState().lastIndex+1;
                                      _model.english5Match = true;
                                      _model.english1NotMatch = false;
                                      _model.english2NotMatch = false;
                                      _model.english3NotMatch = false;
                                      _model.english4NotMatch = false;
                                      _model.english5NotMatch = false;

                                      Future.delayed(Duration(microseconds: 5000), () {
                                        _model.english5Visible = false;
                                        _model.danishSentence = "";
                                        _model.englishSentence = "";
                                      });
                                    } else {
                                      _model.english5NotMatch = true;
                                    }
                                    //Custom code End
                                  },
                                  text: FFAppState().english5,
                                  options: FFButtonOptions(
                                    width: 130.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: () {
                                      if (_model.english5Match!) {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else if (_model.danish5NotMatch!) {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
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
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 240.0,
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Text(
                            'Sample Sentences',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.0,
                                      decoration: TextDecoration.underline,
                                    ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Text(
                          _model.danishSentence!,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Text(
                          _model.englishSentence!,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).plumpPurple,
                                fontSize: 20.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Custom code Start
  Future<bool> onMatchWord() async {
    String correctWord = 'correct';
    bool matched =  false;

    if (_model.matchWord == _model.correctWord) {
      matched = true;
    } else {
      matched = false;
    }

    if (matched) {
      print("word matched");
      String? docId = '';
      int correctAttempt = 0;

      if (_model.word1Active) {
        docId = FFAppState().doc1Reference;
        correctAttempt = FFAppState().correctAttempt1;

        Future.delayed(const Duration(milliseconds: 4800), () {
          setState(() {
            _model.danish1Visible = false;
          });
          if (!_model.danish1Visible! && !_model.danish2Visible! &&
              !_model.danish3Visible! && !_model.danish4Visible! &&
              !_model.danish5Visible!)  {
            loadValues();
          }
        });
      }   else if (_model.word2Active) {
        docId = FFAppState().doc2Reference;
        correctAttempt = FFAppState().correctAttempt2;

        Future.delayed(const Duration(milliseconds: 4800), () {
          setState(() {
            _model.danish2Visible = false;
          });
          if (!_model.danish1Visible! && !_model.danish2Visible! &&
              !_model.danish3Visible! && !_model.danish4Visible! &&
              !_model.danish5Visible!)  {
            loadValues();
          }
        });
      }   else if (_model.word3Active) {
        docId = FFAppState().doc3Reference;
        correctAttempt = FFAppState().correctAttempt3;

        Future.delayed(const Duration(milliseconds: 4800), () {
          setState(() {
            _model.danish3Visible = false;
          });
          if (!_model.danish1Visible! && !_model.danish2Visible! &&
              !_model.danish3Visible! && !_model.danish4Visible! &&
              !_model.danish5Visible!)  {
            loadValues();
          }
        });
      }   else if (_model.word4Active) {
        docId = FFAppState().doc4Reference;
        correctAttempt = FFAppState().correctAttempt4;

        Future.delayed(const Duration(milliseconds: 4800), () {
          setState(() {
            _model.danish4Visible = false;
          });
          if (!_model.danish1Visible! && !_model.danish2Visible! &&
              !_model.danish3Visible! && !_model.danish4Visible! &&
              !_model.danish5Visible!)  {
            loadValues();
          }
        });
      }   else if (_model.word5Active) {
        docId = FFAppState().doc5Reference;
        correctAttempt = FFAppState().correctAttempt5;

        Future.delayed(const Duration(milliseconds: 4800), () {
          setState(() {
            _model.danish5Visible = false;
          });
          if (!_model.danish1Visible! && !_model.danish2Visible! &&
              !_model.danish3Visible! && !_model.danish4Visible! &&
              !_model.danish5Visible!)  {
            loadValues();
          }
        });
      }
      if (_model.word1Active) {
        setState(() {
          _model.danish1Match = true;
          _model.danishSentence = FFAppState().sentence1Danish;
          _model.englishSentence = FFAppState().sentence1English;
        });
        playSentence();
      } else if (_model.word2Active) {
        setState(() {
          _model.danish2Match = true;
          _model.danishSentence = FFAppState().sentence2Danish;
          _model.englishSentence = FFAppState().sentence2English;
        });
        playSentence();
      } else if (_model.word3Active) {
        setState(() {
          _model.danish3Match = true;
          _model.danishSentence = FFAppState().sentence3Danish;
          _model.englishSentence = FFAppState().sentence3English;
        });
        playSentence();
      } else if (_model.word4Active) {
        setState(() {
          _model.danish4Match = true;
          _model.danishSentence = FFAppState().sentence4Danish;
          _model.englishSentence = FFAppState().sentence4English;
        });
        playSentence();
      } else if (_model.word5Active) {
        setState(() {
          _model.danish5Match = true;
          _model.danishSentence = FFAppState().sentence5Danish;
          _model.englishSentence = FFAppState().sentence5English;
        });
        playSentence();
      }
      if (widget.mode == 'practice') {
        actions.updateToughWord(docId, (correctAttempt +1));
      }
    }
    else {
      String danish = "";
      String english = "";
      String docId = "";
      String englishSentence = "";
      String danishSentence = "";

      if (_model.word1Active) {
        docId = FFAppState().doc1Reference;
        danish = FFAppState().danish1;
        english = FFAppState().english1Correct;
        englishSentence = FFAppState().sentence1English;
        danishSentence = FFAppState().sentence1Danish;
        setState(() {
          _model.danish1NotMatch = true;
        });
      } else if (_model.word2Active) {
        docId = FFAppState().doc2Reference;
        danish = FFAppState().danish2;
        english = FFAppState().english2Correct;
        englishSentence = FFAppState().sentence2English;
        danishSentence = FFAppState().sentence2Danish;
        setState(() {
          _model.danish2NotMatch = true;
        });
      } else if (_model.word3Active) {
        docId = FFAppState().doc3Reference;
        danish = FFAppState().danish3;
        english = FFAppState().english3Correct;
        englishSentence = FFAppState().sentence3English;
        danishSentence = FFAppState().sentence3Danish;
        setState(() {
          _model.danish3NotMatch = true;
        });
      } else if (_model.word4Active) {
        docId = FFAppState().doc4Reference;
        danish = FFAppState().danish4;
        english = FFAppState().english4Correct;
        englishSentence = FFAppState().sentence4English;
        danishSentence = FFAppState().sentence4Danish;
        setState(() {
          _model.danish4NotMatch = true;
        });
      } else if (_model.word5Active) {
        docId = FFAppState().doc5Reference;
        danish = FFAppState().danish5;
        english = FFAppState().english5Correct;
        englishSentence = FFAppState().sentence5English;
        danishSentence = FFAppState().sentence5Danish;
        setState(() {
          _model.danish5NotMatch = true;
        });
      }
      print(docId);
      await actions.saveToughWord(docId, danish, english, englishSentence, danishSentence);
    }
    return matched;
  }

  Future<void> playSentence()  async {
    if (_model.soundPlayer!.playing) {
      await _model.soundPlayer!.stop();
    }
    _model.soundPlayer!.setVolume(1.0);

    if (_model.word1Active) {
      _model.soundPlayer!
          .setUrl(FFAppState().sentence1AudioPath)
          .then((_) => _model.soundPlayer!.play());
    } else if (_model.word2Active) {
      _model.soundPlayer!
          .setUrl(FFAppState().sentence2AudioPath)
          .then((_) => _model.soundPlayer!.play());
    } else if (_model.word3Active) {
      _model.soundPlayer!
          .setUrl(FFAppState().sentence3AudioPath)
          .then((_) => _model.soundPlayer!.play());
    } else if (_model.word4Active) {
      _model.soundPlayer!
          .setUrl(FFAppState().sentence4AudioPath)
          .then((_) => _model.soundPlayer!.play());
    } else if (_model.word5Active) {
      _model.soundPlayer!
          .setUrl(FFAppState().sentence5AudioPath)
          .then((_) => _model.soundPlayer!.play());
    }
  }

  Future<void> loadValues() async {
    List<dynamic>? words;
    if (widget.mode == 'learn' ) {
      words = await actions.getWords();
    } else if (widget.mode == 'practice') {
      words = await actions.getToughWords();
    }

    setState(() {
      _model.enableEnglishButtons = false;
      _model.danishSentence = "";
      _model.englishSentence = "";
      if (words!.length > 0) {
        FFAppState().doc1Reference = words.elementAt(0)['docid'];
        FFAppState().danish1 = words.elementAt(0)['danish'];
        FFAppState().english1 = words.elementAt(0)['shuffledEnglish'];
        FFAppState().english1Correct = words.elementAt(0)['english'];
        FFAppState().sentence1Danish = words.elementAt(0)['danishSentence'];
        FFAppState().sentence1English = words.elementAt(0)['englishSentence'];
        FFAppState().correctAttempt1 = words.elementAt(0)['correct_attempt'];
        FFAppState().word1AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(0)['docid'] +
                "wordaudio.mp3";
        FFAppState().sentence1AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(0)['docid'] +
                "sentenceaudio.mp3";
      } else {
        FFAppState().doc1Reference = "";
        FFAppState().danish1 = "";
        FFAppState().english1 = "";
        FFAppState().english1Correct = "";
        FFAppState().sentence1Danish = "";
        FFAppState().sentence1English = "";
        FFAppState().correctAttempt1 = 0;
        FFAppState().word1AudioPath = "";
        FFAppState().sentence1AudioPath = "";
      }
      _model.danish1Visible = true;
      _model.english1Visible = true;
      _model.danish1Match = false;
      _model.danish1NotMatch = false;
      _model.english1Match = false;
      _model.english1NotMatch = false;

      if (words.length > 1) {
        FFAppState().doc2Reference = words.elementAt(1)['docid'];
        FFAppState().danish2 = words.elementAt(1)['danish'];
        FFAppState().english2 = words.elementAt(1)['shuffledEnglish'];
        FFAppState().english2Correct = words.elementAt(1)['english'];
        FFAppState().sentence2Danish = words.elementAt(1)['danishSentence'];
        FFAppState().sentence2English = words.elementAt(1)['englishSentence'];
        FFAppState().correctAttempt2 = words.elementAt(1)['correct_attempt'];
        FFAppState().word2AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(1)['docid'] +
                "wordaudio.mp3";
        FFAppState().sentence2AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(1)['docid'] +
                "sentenceaudio.mp3";
      } else {
        FFAppState().doc2Reference = "";
        FFAppState().danish2 = "";
        FFAppState().english2 = "";
        FFAppState().english2Correct = "";
        FFAppState().sentence2Danish = "";
        FFAppState().sentence2English = "";
        FFAppState().correctAttempt2 = 0;
        FFAppState().word2AudioPath = "";
        FFAppState().sentence2AudioPath = "";
      }
      _model.danish2Visible = true;
      _model.english2Visible = true;
      _model.danish2Match = false;
      _model.danish2NotMatch = false;
      _model.english2Match = false;
      _model.english2NotMatch = false;

      if (words!.length > 2) {
        FFAppState().doc3Reference = words.elementAt(2)['docid'];
        FFAppState().danish3 = words.elementAt(2)['danish'];
        FFAppState().english3 = words.elementAt(2)['shuffledEnglish'];
        FFAppState().english3Correct = words.elementAt(2)['english'];
        FFAppState().sentence3Danish = words.elementAt(2)['danishSentence'];
        FFAppState().sentence3English = words.elementAt(2)['englishSentence'];
        FFAppState().correctAttempt3 = words.elementAt(2)['correct_attempt'];
        FFAppState().word3AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(2)['docid'] +
                "wordaudio.mp3";
        FFAppState().sentence3AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(2)['docid'] +
                "sentenceaudio.mp3";
      } else {
        FFAppState().doc3Reference = "";
        FFAppState().danish3 = "";
        FFAppState().english3 = "";
        FFAppState().english3Correct = "";
        FFAppState().sentence3Danish = "";
        FFAppState().sentence3English = "";
        FFAppState().correctAttempt3 = 0;
        FFAppState().word3AudioPath = "";
        FFAppState().sentence3AudioPath = "";
      }
      _model.danish3Visible = true;
      _model.english3Visible = true;
      _model.danish3Match = false;
      _model.danish3NotMatch = false;
      _model.english3Match = false;
      _model.english3NotMatch = false;

      if (words!.length > 3) {
        FFAppState().doc4Reference = words.elementAt(3)['docid'];
        FFAppState().danish4 = words.elementAt(3)['danish'];
        FFAppState().english4 = words.elementAt(3)['shuffledEnglish'];
        FFAppState().english4Correct = words.elementAt(3)['english'];
        FFAppState().sentence4Danish = words.elementAt(3)['danishSentence'];
        FFAppState().sentence4English = words.elementAt(3)['englishSentence'];
        FFAppState().correctAttempt4 = words.elementAt(3)['correct_attempt'];
        FFAppState().word4AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(3)['docid'] +
                "wordaudio.mp3";
        FFAppState().sentence4AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(3)['docid'] +
                "sentenceaudio.mp3";
      } else {
        FFAppState().doc4Reference = "";
        FFAppState().danish4 = "";
        FFAppState().english4 = "";
        FFAppState().english4Correct = "";
        FFAppState().sentence4Danish = "";
        FFAppState().sentence4English = "";
        FFAppState().correctAttempt4 = 0;
        FFAppState().word4AudioPath = "";
        FFAppState().sentence4AudioPath = "";
      }
      _model.danish4Visible = true;
      _model.english4Visible = true;
      _model.danish4Match = false;
      _model.danish4NotMatch = false;
      _model.english4Match = false;
      _model.english4NotMatch = false;

      if (words!.length > 4) {
        FFAppState().doc5Reference = words.elementAt(4)['docid'];
        FFAppState().danish5 = words.elementAt(4)['danish'];
        FFAppState().english5 = words.elementAt(4)['shuffledEnglish'];
        FFAppState().english5Correct = words.elementAt(4)['english'];
        FFAppState().sentence5Danish = words.elementAt(4)['danishSentence'];
        FFAppState().sentence5English = words.elementAt(4)['englishSentence'];
        FFAppState().correctAttempt5 = words.elementAt(4)['correct_attempt'];
        FFAppState().word5AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(4)['docid'] +
                "wordaudio.mp3";
        FFAppState().sentence5AudioPath =
            "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
                words.elementAt(4)['docid'] +
                "sentenceaudio.mp3";
      } else {
        FFAppState().doc5Reference = "";
        FFAppState().danish5 = "";
        FFAppState().english5 = "";
        FFAppState().english5Correct = "";
        FFAppState().sentence5Danish = "";
        FFAppState().sentence5English = "";
        FFAppState().correctAttempt5 = 0;
        FFAppState().word5AudioPath = "";
        FFAppState().sentence5AudioPath = "";
      }
      _model.danish5Visible = true;
      _model.english5Visible = true;
      _model.danish5Match = false;
      _model.danish5NotMatch = false;
      _model.english5Match = false;
      _model.english5NotMatch = false;
      _model.word5Active = false;
    });
  }
  //Custom code End

}