import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _newCount = prefs.getInt('ff_newCount') ?? _newCount;
    _toughCount = prefs.getInt('ff_toughCount') ?? _toughCount;
    _learntCount = prefs.getInt('ff_learntCount') ?? _learntCount;
    _wordList =
        prefs.getStringList('ff_wordList')?.map((path) => path.ref).toList() ??
            _wordList;
    _newIndex = prefs.getInt('ff_newIndex') ?? _newIndex;
    _danish1 = prefs.getString('ff_danish1') ?? _danish1;
    _danish2 = prefs.getString('ff_danish2') ?? _danish2;
    _danish3 = prefs.getString('ff_danish3') ?? _danish3;
    _danish4 = prefs.getString('ff_danish4') ?? _danish4;
    _danish5 = prefs.getString('ff_danish5') ?? _danish5;
    _correctAttempt1 = prefs.getInt('ff_correctAttempt1') ?? _correctAttempt1;
    _correctAttempt2 = prefs.getInt('ff_correctAttempt2') ?? _correctAttempt2;
    _correctAttempt3 = prefs.getInt('ff_correctAttempt3') ?? _correctAttempt3;
    _correctAttempt4 = prefs.getInt('ff_correctAttempt4') ?? _correctAttempt4;
    _correctAttempt5 = prefs.getInt('ff_correctAttempt5') ?? _correctAttempt5;
    _english1 = prefs.getString('ff_english1') ?? _english1;
    _english2 = prefs.getString('ff_english2') ?? _english2;
    _english3 = prefs.getString('ff_english3') ?? _english3;
    _english4 = prefs.getString('ff_english4') ?? _english4;
    _english5 = prefs.getString('ff_english5') ?? _english5;
    _word1AudioPath = prefs.getString('ff_word1AudioPath') ?? _word1AudioPath;
    _word2AudioPath = prefs.getString('ff_word2AudioPath') ?? _word2AudioPath;
    _word3AudioPath = prefs.getString('ff_word3AudioPath') ?? _word3AudioPath;
    _word4AudioPath = prefs.getString('ff_word4AudioPath') ?? _word4AudioPath;
    _word5AudioPath = prefs.getString('ff_word5AudioPath') ?? _word5AudioPath;
    _sentence1Danish =
        prefs.getString('ff_sentence1Danish') ?? _sentence1Danish;
    _sentence2Danish =
        prefs.getString('ff_sentence2Danish') ?? _sentence2Danish;
    _sentence3Danish =
        prefs.getString('ff_sentence3Danish') ?? _sentence3Danish;
    _sentence4Danish =
        prefs.getString('ff_sentence4Danish') ?? _sentence4Danish;
    _sentence5Danish =
        prefs.getString('ff_sentence5Danish') ?? _sentence5Danish;
    _sentence1English =
        prefs.getString('ff_sentence1English') ?? _sentence1English;
    _sentence2English =
        prefs.getString('ff_sentence2English') ?? _sentence2English;
    _sentence3English =
        prefs.getString('ff_sentence3English') ?? _sentence3English;
    _sentence4English =
        prefs.getString('ff_sentence4English') ?? _sentence4English;
    _sentence5English =
        prefs.getString('ff_sentence5English') ?? _sentence5English;
    _sentence1AudioPath =
        prefs.getString('ff_sentence1AudioPath') ?? _sentence1AudioPath;
    _sentence2AudioPath =
        prefs.getString('ff_sentence2AudioPath') ?? _sentence2AudioPath;
    _sentence3AudioPath =
        prefs.getString('ff_sentence3AudioPath') ?? _sentence3AudioPath;
    _sentence4AudioPath =
        prefs.getString('ff_sentence4AudioPath') ?? _sentence4AudioPath;
    _sentence5AudioPath =
        prefs.getString('ff_sentence5AudioPath') ?? _sentence5AudioPath;
    _english1Correct =
        prefs.getString('ff_english1Correct') ?? _english1Correct;
    _english2Correct =
        prefs.getString('ff_english2Correct') ?? _english2Correct;
    _english3Correct =
        prefs.getString('ff_english3Correct') ?? _english3Correct;
    _english4Correct =
        prefs.getString('ff_english4Correct') ?? _english4Correct;
    _english5Correct =
        prefs.getString('ff_english5Correct') ?? _english5Correct;
    _activeDanishSentence =
        prefs.getString('ff_activeDanishSentence') ?? _activeDanishSentence;
    _activeEnglishSentence =
        prefs.getString('ff_activeEnglishSentence') ?? _activeEnglishSentence;
    _activeSentenceAudioPath = prefs.getString('ff_activeSentenceAudioPath') ??
        _activeSentenceAudioPath;
    _selWordIndexInPage =
        prefs.getInt('ff_selWordIndexInPage') ?? _selWordIndexInPage;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _newCount = 0;
  int get newCount => _newCount;
  set newCount(int _value) {
    _newCount = _value;
    prefs.setInt('ff_newCount', _value);
  }

  int _toughCount = 0;
  int get toughCount => _toughCount;
  set toughCount(int _value) {
    _toughCount = _value;
    prefs.setInt('ff_toughCount', _value);
  }

  int _learntCount = 0;
  int get learntCount => _learntCount;
  set learntCount(int _value) {
    _learntCount = _value;
    prefs.setInt('ff_learntCount', _value);
  }

  List<DocumentReference> _wordList = [];
  List<DocumentReference> get wordList => _wordList;
  set wordList(List<DocumentReference> _value) {
    _wordList = _value;
    prefs.setStringList('ff_wordList', _value.map((x) => x.path).toList());
  }

  void addToWordList(DocumentReference _value) {
    _wordList.add(_value);
    prefs.setStringList('ff_wordList', _wordList.map((x) => x.path).toList());
  }

  void removeFromWordList(DocumentReference _value) {
    _wordList.remove(_value);
    prefs.setStringList('ff_wordList', _wordList.map((x) => x.path).toList());
  }

  void removeAtIndexFromWordList(int _index) {
    _wordList.removeAt(_index);
    prefs.setStringList('ff_wordList', _wordList.map((x) => x.path).toList());
  }

  int _newIndex = 0;
  int get newIndex => _newIndex;
  set newIndex(int _value) {
    _newIndex = _value;
    prefs.setInt('ff_newIndex', _value);
  }

  String _danish1 = '';
  String get danish1 => _danish1;
  set danish1(String _value) {
    _danish1 = _value;
    prefs.setString('ff_danish1', _value);
  }

  String _danish2 = '';
  String get danish2 => _danish2;
  set danish2(String _value) {
    _danish2 = _value;
    prefs.setString('ff_danish2', _value);
  }

  String _danish3 = '';
  String get danish3 => _danish3;
  set danish3(String _value) {
    _danish3 = _value;
    prefs.setString('ff_danish3', _value);
  }

  String _danish4 = '';
  String get danish4 => _danish4;
  set danish4(String _value) {
    _danish4 = _value;
    prefs.setString('ff_danish4', _value);
  }

  String _danish5 = '';
  String get danish5 => _danish5;
  set danish5(String _value) {
    _danish5 = _value;
    prefs.setString('ff_danish5', _value);
  }

  int _correctAttempt1 = 0;
  int get correctAttempt1 => _correctAttempt1;
  set correctAttempt1(int _value) {
    _correctAttempt1 = _value;
    prefs.setInt('_correctAttempt1', _value);
  }

  int _correctAttempt2 = 0;
  int get correctAttempt2 => _correctAttempt2;
  set correctAttempt2(int _value) {
    _correctAttempt2 = _value;
    prefs.setInt('_correctAttempt2', _value);
  }

  int _correctAttempt3 = 0;
  int get correctAttempt3 => _correctAttempt3;
  set correctAttempt3(int _value) {
    _correctAttempt3 = _value;
    prefs.setInt('_correctAttempt3', _value);
  }

  int _correctAttempt4 = 0;
  int get correctAttempt4 => _correctAttempt4;
  set correctAttempt4(int _value) {
    _correctAttempt4 = _value;
    prefs.setInt('_correctAttempt4', _value);
  }

  int _correctAttempt5 = 0;
  int get correctAttempt5 => _correctAttempt5;
  set correctAttempt5(int _value) {
    _correctAttempt5 = _value;
    prefs.setInt('_correctAttempt5', _value);
  }

  String _english1 = '';
  String get english1 => _english1;
  set english1(String _value) {
    _english1 = _value;
    prefs.setString('ff_english1', _value);
  }

  String _english2 = '';
  String get english2 => _english2;
  set english2(String _value) {
    _english2 = _value;
    prefs.setString('ff_english2', _value);
  }

  String _english3 = '';
  String get english3 => _english3;
  set english3(String _value) {
    _english3 = _value;
    prefs.setString('ff_english3', _value);
  }

  String _english4 = '';
  String get english4 => _english4;
  set english4(String _value) {
    _english4 = _value;
    prefs.setString('ff_english4', _value);
  }

  String _english5 = '';
  String get english5 => _english5;
  set english5(String _value) {
    _english5 = _value;
    prefs.setString('ff_english5', _value);
  }

  String _word1AudioPath = '';
  String get word1AudioPath => _word1AudioPath;
  set word1AudioPath(String _value) {
    _word1AudioPath = _value;
    prefs.setString('ff_word1AudioPath', _value);
  }

  String _word2AudioPath = '';
  String get word2AudioPath => _word2AudioPath;
  set word2AudioPath(String _value) {
    _word2AudioPath = _value;
    prefs.setString('ff_word2AudioPath', _value);
  }

  String _word3AudioPath = '';
  String get word3AudioPath => _word3AudioPath;
  set word3AudioPath(String _value) {
    _word3AudioPath = _value;
    prefs.setString('ff_word3AudioPath', _value);
  }

  String _word4AudioPath = '';
  String get word4AudioPath => _word4AudioPath;
  set word4AudioPath(String _value) {
    _word4AudioPath = _value;
    prefs.setString('ff_word4AudioPath', _value);
  }

  String _word5AudioPath = '';
  String get word5AudioPath => _word5AudioPath;
  set word5AudioPath(String _value) {
    _word5AudioPath = _value;
    prefs.setString('ff_word5AudioPath', _value);
  }

  String _sentence1Danish = '';
  String get sentence1Danish => _sentence1Danish;
  set sentence1Danish(String _value) {
    _sentence1Danish = _value;
    prefs.setString('ff_sentence1Danish', _value);
  }

  String _sentence2Danish = '';
  String get sentence2Danish => _sentence2Danish;
  set sentence2Danish(String _value) {
    _sentence2Danish = _value;
    prefs.setString('ff_sentence2Danish', _value);
  }

  String _sentence3Danish = '';
  String get sentence3Danish => _sentence3Danish;
  set sentence3Danish(String _value) {
    _sentence3Danish = _value;
    prefs.setString('ff_sentence3Danish', _value);
  }

  String _sentence4Danish = '';
  String get sentence4Danish => _sentence4Danish;
  set sentence4Danish(String _value) {
    _sentence4Danish = _value;
    prefs.setString('ff_sentence4Danish', _value);
  }

  String _sentence5Danish = '';
  String get sentence5Danish => _sentence5Danish;
  set sentence5Danish(String _value) {
    _sentence5Danish = _value;
    prefs.setString('ff_sentence5Danish', _value);
  }

  String _sentence1English = '';
  String get sentence1English => _sentence1English;
  set sentence1English(String _value) {
    _sentence1English = _value;
    prefs.setString('ff_sentence1English', _value);
  }

  String _sentence2English = '';
  String get sentence2English => _sentence2English;
  set sentence2English(String _value) {
    _sentence2English = _value;
    prefs.setString('ff_sentence2English', _value);
  }

  String _sentence3English = '';
  String get sentence3English => _sentence3English;
  set sentence3English(String _value) {
    _sentence3English = _value;
    prefs.setString('ff_sentence3English', _value);
  }

  String _sentence4English = '';
  String get sentence4English => _sentence4English;
  set sentence4English(String _value) {
    _sentence4English = _value;
    prefs.setString('ff_sentence4English', _value);
  }

  String _sentence5English = '';
  String get sentence5English => _sentence5English;
  set sentence5English(String _value) {
    _sentence5English = _value;
    prefs.setString('ff_sentence5English', _value);
  }

  String _sentence1AudioPath = '';
  String get sentence1AudioPath => _sentence1AudioPath;
  set sentence1AudioPath(String _value) {
    _sentence1AudioPath = _value;
    prefs.setString('ff_sentence1AudioPath', _value);
  }

  String _sentence2AudioPath = '';
  String get sentence2AudioPath => _sentence2AudioPath;
  set sentence2AudioPath(String _value) {
    _sentence2AudioPath = _value;
    prefs.setString('ff_sentence2AudioPath', _value);
  }

  String _sentence3AudioPath = '';
  String get sentence3AudioPath => _sentence3AudioPath;
  set sentence3AudioPath(String _value) {
    _sentence3AudioPath = _value;
    prefs.setString('ff_sentence3AudioPath', _value);
  }

  String _sentence4AudioPath = '';
  String get sentence4AudioPath => _sentence4AudioPath;
  set sentence4AudioPath(String _value) {
    _sentence4AudioPath = _value;
    prefs.setString('ff_sentence4AudioPath', _value);
  }

  String _sentence5AudioPath = '';
  String get sentence5AudioPath => _sentence5AudioPath;
  set sentence5AudioPath(String _value) {
    _sentence5AudioPath = _value;
    prefs.setString('ff_sentence5AudioPath', _value);
  }

  String _english1Correct = '';
  String get english1Correct => _english1Correct;
  set english1Correct(String _value) {
    _english1Correct = _value;
    prefs.setString('ff_english1Correct', _value);
  }

  String _english2Correct = '';
  String get english2Correct => _english2Correct;
  set english2Correct(String _value) {
    _english2Correct = _value;
    prefs.setString('ff_english2Correct', _value);
  }

  String _english3Correct = '';
  String get english3Correct => _english3Correct;
  set english3Correct(String _value) {
    _english3Correct = _value;
    prefs.setString('ff_english3Correct', _value);
  }

  String _english4Correct = '';
  String get english4Correct => _english4Correct;
  set english4Correct(String _value) {
    _english4Correct = _value;
    prefs.setString('ff_english4Correct', _value);
  }

  String _english5Correct = '';
  String get english5Correct => _english5Correct;
  set english5Correct(String _value) {
    _english5Correct = _value;
    prefs.setString('ff_english5Correct', _value);
  }

  String _activeDanishSentence = '';
  String get activeDanishSentence => _activeDanishSentence;
  set activeDanishSentence(String _value) {
    _activeDanishSentence = _value;
    prefs.setString('ff_activeDanishSentence', _value);
  }

  String _activeEnglishSentence = '';
  String get activeEnglishSentence => _activeEnglishSentence;
  set activeEnglishSentence(String _value) {
    _activeEnglishSentence = _value;
    prefs.setString('ff_activeEnglishSentence', _value);
  }

  String _activeSentenceAudioPath = '';
  String get activeSentenceAudioPath => _activeSentenceAudioPath;
  set activeSentenceAudioPath(String _value) {
    _activeSentenceAudioPath = _value;
    prefs.setString('ff_activeSentenceAudioPath', _value);
  }

  int _selWordIndexInPage = 0;
  int get selWordIndexInPage => _selWordIndexInPage;
  set selWordIndexInPage(int _value) {
    _selWordIndexInPage = _value;
    prefs.setInt('ff_selWordIndexInPage', _value);
  }

  List<dynamic> _wordCache = [];
  List<dynamic> get wordCache => _wordCache;
  set wordCache(List<dynamic> _value) {
    _wordCache = _value;
  }

  void addToWordCache(dynamic _value) {
    _wordCache.add(_value);
  }

  void removeFromWordCache(dynamic _value) {
    _wordCache.remove(_value);
  }

  void removeAtIndexFromWordCache(int _index) {
    _wordCache.removeAt(_index);
  }

  List<dynamic> _toughWordCache = [];
  List<dynamic> get toughWordCache => _toughWordCache;
  set toughWordCache(List<dynamic> _value) {
    _toughWordCache = _value;
  }

  void addToToughWordCache(dynamic _value) {
    _toughWordCache.add(_value);
  }

  void removeFromToughWordCache(dynamic _value) {
    _toughWordCache.remove(_value);
  }

  void removeAtIndexFromToughWordCache(int _index) {
    _toughWordCache.removeAt(_index);
  }

  List<dynamic> _toughWordDBCache = [];
  List<dynamic> get toughWordDBCache => _toughWordDBCache;
  set toughWordDBCache(List<dynamic> _value) {
    _toughWordDBCache = _value;
  }

  void addToToughWordDBCache(dynamic _value) {
    _toughWordDBCache.add(_value);
  }

  void removeFromToughWordDBCache(dynamic _value) {
    _toughWordDBCache.remove(_value);
  }

  void removeAtIndexFromToughWordDBCache(int _index) {
    _toughWordDBCache.removeAt(_index);
  }

  String _doc1Reference = '';
  String get doc1Reference => _doc1Reference;
  set doc1Reference(String _value) {
    _doc1Reference = _value;
  }

  String _doc2Reference = '';
  String get doc2Reference => _doc2Reference;
  set doc2Reference(String _value) {
    _doc2Reference = _value;
  }

  String _doc3Reference = '';
  String get doc3Reference => _doc3Reference;
  set doc3Reference(String _value) {
    _doc3Reference = _value;
  }

  String _doc4Reference = '';
  String get doc4Reference => _doc4Reference;
  set doc4Reference(String _value) {
    _doc4Reference = _value;
  }

  String _doc5Reference = '';
  String get doc5Reference => _doc5Reference;
  set doc5Reference(String _value) {
    _doc5Reference = _value;
  }

  int _lastIndex = 0;
  int get lastIndex => _lastIndex;
  set lastIndex(int _value) {
    _lastIndex = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
