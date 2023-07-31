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

Future<List<dynamic>> getToughWords() async {
  List<WordsRecord> wordDocs = [];
  FFAppState appState = FFAppState();
  if (appState.toughWordCache.isEmpty) {
    appState.initializePersistedState();
  }

  List<dynamic> wordJsonList = appState.toughWordCache;
  List<dynamic> wordPageJsonList = [];

  if (wordJsonList.length < 1) {
    // Firebase query
    final db = FirebaseFirestore.instance;
    CollectionReference toughWords = db.collection('users').doc(currentUserUid).collection('tough_words');

    // Get the documents in the third level collection.
    await toughWords.get().then((querySnapshot) {
      // Iterate over the documents in the snapshot.
      for (final document in querySnapshot.docs) {
        // Get the document data.
        final dynamic documentData = document.data();
        if (documentData['correct_attempt'] < 3) {
          wordJsonList.add(documentData);
          appState.toughWordDBCache.add(documentData);
        }
      }
    });
  }

  dynamic? wordJSON;
  List<String> englishWords = [];
  for(final word in wordJsonList.take(5)) {
    wordPageJsonList.add(word);
    englishWords.add(word['english']);
  }

  if (wordPageJsonList.length < 5) {
    int x = 0;
    for (int i = 0; i < englishWords.length; i++) {
      wordJsonList.removeAt(0);
      x++;
    }
    for(final word in appState.toughWordDBCache) {
      if (word['correct_attempt'] < 3) {
        if (!wordPageJsonList.contains(word)) {
          wordJsonList.add(word);
        }
      }
    }
    for(final word in wordJsonList.take((5 - wordPageJsonList.length))) {
      wordPageJsonList.add(word);
      englishWords.add(word['english']);
    }
    for (int i = x; i < englishWords.length; i++) {
      wordJsonList.removeAt(0);
      x++;
    }
  } else {
    for (int i = 0; i < englishWords.length; i++) {
      wordJsonList.removeAt(0);
    }
  }

  englishWords.shuffle();
  int x = 0;
  for(final shuffledEnglish in englishWords) {
    wordPageJsonList.elementAt(x)['shuffledEnglish'] = englishWords.elementAt(x);
    x++;
  }

  return wordPageJsonList;
}
