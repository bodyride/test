// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

Future<List<WordsRecord>> getWordList(
  int? limit,
  String? collectionName,
) async {
  // Add your function code here!

  // null safety
  collectionName ??= 'words';
  limit ??= -1;

  // TODO change the name here
  List<WordsRecord> docs = [];

  /*

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the usersdata collection
  final collectionRef = firestore.collection(collectionName);

  // Fetch all documents from the usersdata collection
  Query query = collectionRef;

  // Apply the limit if specified
  if (limit > 0) {
    query = query.limit(limit);
  }
  final querySnapshot = await query.get();
  // Iterate through the documents and create WordsRecord instances
  for (var doc in querySnapshot.docs) {
    WordsRecord wordsRecord = await WordsRecord.getDocumentOnce(doc.reference);
    docs.add(wordsRecord);
  }

  FFAppState appState = FFAppState();
  appState.wordList = docs;
  int index = 0;
  List<int> indexes = [];
  String wordRefId = "";

  appState.newCount = docs.length;
  indexes.add(index);
  print(index);
  WordsRecord word = docs.elementAt(index);
  wordRefId = word.reference.id;
  appState.doc1Reference = word.reference;
  appState.danish1 = word.danish!;
  appState.english1Correct = word.english!;
  appState.sentence1Danish = word.sentence!.elementAt(0);
  appState.sentence1English = word.sentence!.elementAt(1);
  appState.word1AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "wordaudio.mp3";
  appState.sentence1AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "sentenceaudio.mp3";

  index = index + 1;
  indexes.add((index));
  print(index);
  word = docs.elementAt(index);
  wordRefId = word.reference.id;
  appState.danish2 = word.danish!;
  appState.english2Correct = word.english!;
  appState.sentence2Danish = word.sentence!.elementAt(0);
  appState.sentence2English = word.sentence!.elementAt(1);
  appState.word2AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "wordaudio.mp3";
  appState.sentence2AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "sentenceaudio.mp3";

  index = index + 1;
  indexes.add(index);
  print(index);
  word = docs.elementAt(index);
  wordRefId = word.reference.id;
  appState.danish3 = word.danish!;
  appState.english3Correct = word.english!;
  appState.sentence3Danish = word.sentence!.elementAt(0);
  appState.sentence3English = word.sentence!.elementAt(1);
  appState.word3AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "wordaudio.mp3";
  appState.sentence3AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "sentenceaudio.mp3";
  index = index + 1;
  indexes.add(index);
  print(index);
  word = docs.elementAt(index);
  wordRefId = word.reference.id;
  appState.danish4 = word.danish!;
  appState.english4Correct = word.english!;
  appState.sentence4Danish = word.sentence!.elementAt(0);
  appState.sentence4English = word.sentence!.elementAt(1);
  appState.word4AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "wordaudio.mp3";
  appState.sentence4AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "sentenceaudio.mp3";
  index = index + 1;
  indexes.add(index);
  print(index);
  word = docs.elementAt(index);
  wordRefId = word.reference.id;
  appState.danish5 = word.danish!;
  appState.english5Correct = word.english!;
  appState.sentence5Danish = word.sentence!.elementAt(0);
  appState.sentence5English = word.sentence!.elementAt(1);
  appState.word5AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "wordaudio.mp3";
  appState.sentence5AudioPath =
      "https://storage.googleapis.com/test-ed0b8.appspot.com/Audio/Danish/" +
          wordRefId +
          "sentenceaudio.mp3";
  appState.newIndex = index;
  indexes.shuffle();
  indexes.shuffle();
  appState.english1 = docs.elementAt(indexes.elementAt(0)).english!;
  appState.english2 = docs.elementAt(indexes.elementAt(1)).english!;
  appState.english3 = docs.elementAt(indexes.elementAt(2)).english!;
  appState.english4 = docs.elementAt(indexes.elementAt(3)).english!;
  appState.english5 = docs.elementAt(indexes.elementAt(4)).english!;


   */

  return docs;
}
