import 'package:firebd_example/models/artist_model.dart';
import 'package:firebd_example/services/cloud_firestore_service.dart';
import 'package:flutter/material.dart';

class ArtistScreen extends StatefulWidget {
  const ArtistScreen({super.key});

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {

  final CloudFirestoreService _cloudFirestoreService = CloudFirestoreService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Artistas de Spotify'),
      ),
    );
  }
}