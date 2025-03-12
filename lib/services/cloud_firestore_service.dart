import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fbase/models/artist_model.dart';

class CloudFirestoreService {
  // Invocar a la biblioteca firestore
  static final CloudFirestoreService _instance =
      CloudFirestoreService._internal();

  // Conexión a firebase
  final FirebaseFirestore _cloudFireStore = FirebaseFirestore.instance;

  factory CloudFirestoreService() {
    return _instance;
  }

  CloudFirestoreService._internal();

  Stream<List<ArtistModel>> getArtists(String collection) {
    return _cloudFireStore.collection(collection).snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => ArtistModel.fromDocumentSnapshot(doc))
          .toList();
    });
  }

  Future<void> insertArtist(String collection, Map<String, dynamic> data) {
    return _cloudFireStore.collection(collection).add(data);
  }

  Future<void> updateArtist(
      String collection, String docId, Map<String, dynamic> data) {
    return _cloudFireStore.collection(collection).doc(docId).update(data);
  }

  Future<void> deleteArtist(String collection, String docId) {
    return _cloudFireStore.collection(collection).doc(docId).delete();
  }
}
