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

Future<void> updateToughWord(String? docId, int? correctAttempts) async {

  for (final word in FFAppState().toughWordDBCache) {
    if ( word['docid']  == docId) {
      word['correct_attempt'] = correctAttempts;
      break;
    }
  }
  final db = FirebaseFirestore.instance;
  // Create a document reference.
  final docRef = db.collection('users').doc(currentUserUid).collection('tough_words').doc(docId);

  // Create a map of the fields that you want to update
  final updates = {
    'correct_attempt': correctAttempts
  };

  // Update the document
  docRef.update(updates);

  return;
}