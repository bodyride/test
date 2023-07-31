import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

List<dynamic>? convertDoctoJSON(List<WordsRecord>? wordDocs) {
  // null safety
  wordDocs ??= [];

  List<Map<String, dynamic>> carsJson = wordDocs.map((word) {
    return {
      'id': word.reference.id,
      'danish': word.danish,
      'english': word.english,
      'group': word.group,
      'englishSentence': word.sentence!.elementAt(0),
      'danishSentence': word.sentence!.elementAt(1),
    };
  }).toList();

  return carsJson;
}
