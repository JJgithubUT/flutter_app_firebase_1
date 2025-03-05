import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebd_example/models/artist_model.dart';

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

  Stream<List<ArtistModel>> getArtists( String collection ) {
    return _cloudFireStore.collection(collection).snapshots().map((snapshot) {
      return snapshot.docs.map((doc)=>ArtistModel.fromDocumentSnapshot(doc)).toList();
    });
  }

}