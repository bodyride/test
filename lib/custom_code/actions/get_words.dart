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

Future<List<dynamic>> getWords() async {
  List<WordsRecord> wordDocs = [];
  FFAppState appState = FFAppState();
  if (appState.wordCache.isEmpty) {
    appState.initializePersistedState();
  }

  List<dynamic> wordJsonList = appState.wordCache;
  List<dynamic> wordPageJsonList = [];

  if (wordJsonList.length < 5) {
    // Firebase query
    final db = FirebaseFirestore.instance;
    print(appState.lastIndex);
    var lastIndex = 0;
    if (appState.lastIndex == 0) {
      final userRef = db.collection('users').doc(currentUserUid);

      final docSnap = await userRef.get();
      final user = docSnap.data(); // Convert to City object
      if (user != null) {
        print(user);
        lastIndex = user['lastIndex'];
      } else {
        print("No such document.");
      }
      print("+++++++++lastIndex");
      print(lastIndex);
      FFAppState().lastIndex = lastIndex;

    } else {
      db.collection('users').doc(currentUserUid).update({'lastIndex': appState.lastIndex});
    }

    final query = db
        .collection('words')
        .orderBy("id")
        .startAfter([appState.lastIndex]).limit(10);
    final querySnapshot = await query.get();
    // Iterate through the documents and create WordsRecord instances
    for (var doc in querySnapshot.docs) {
      WordsRecord wordsRecord =
          await WordsRecord.getDocumentOnce(doc.reference);
      wordDocs.add(wordsRecord);
    }

    List<Map<String, dynamic>> newWordJsonList = wordDocs.map((word) {
      return {
        'docid': word.reference.id,
        'id': word.id,
        'danish': word.danish!,
        'english': word.english!,
        'group': word.group,
        'englishSentence': word.sentence!.elementAt(0).trim(),
        'danishSentence': word.sentence!.elementAt(1).trim(),
        'correct_attempt': 0
      };
    }).toList();
    wordJsonList.addAll(newWordJsonList);
  }

  dynamic? wordJSON;
  List<String> englishWords = [];
  for(final word in wordJsonList.getRange(0, 5)) {
    wordPageJsonList.add(word);
    englishWords.add(word['english']);
  }

  englishWords.shuffle();
  int x = 0;
  for(final shuffledEnglish in englishWords) {
    wordJsonList.removeAt(0);
    wordPageJsonList.elementAt(x)['shuffledEnglish'] = englishWords.elementAt(x);
    x++;
  }

  return wordPageJsonList;
}
