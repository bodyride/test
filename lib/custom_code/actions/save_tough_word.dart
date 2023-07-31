// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/auth/firebase_auth/auth_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

Future<void> saveToughWord(String? docId, String? danish,
  String? english, String? englishSentence, String? danishSentence) async {

  final db = FirebaseFirestore.instance;
  // Create a collection reference.
  CollectionReference toughWords = db.collection('users').doc(currentUserUid).collection('tough_words');

  // Create a document reference.
  DocumentReference documentRef = toughWords.doc(docId);

  // Create a map of data to add to the document.
  Map<String, dynamic> data = {
    'docid': docId,
    'danish': danish,
    'english': english,
    'englishSentence': englishSentence,
    'danishSentence': danishSentence,
    'correct_attempt': 0
  };

  // Add the data to the document.
  documentRef.set(data);

  return;

}