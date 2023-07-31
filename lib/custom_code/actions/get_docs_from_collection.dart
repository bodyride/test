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

  List<WordsRecord> docs = [];

  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;

  // Get a reference to the collection
  final collectionRef = firestore.collection(collectionName);

  // Fetch all documents from the collection
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

  return docs;
}
