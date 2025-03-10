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
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _generoController = TextEditingController();
  final TextEditingController _inicioController = TextEditingController();
  final TextEditingController _albumsController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Artistas de Spotify'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nombreController,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          TextField(
            controller: _generoController,
            decoration: const InputDecoration(labelText: 'Genero'),
          ),
          TextField(
            controller: _albumsController,
            decoration: const InputDecoration(labelText: 'Albums'),
          ),
          TextField(
            controller: _inicioController,
            decoration: const InputDecoration(labelText: 'Inicio'),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Agregar artista'),
          ),
          Expanded(
            child: StreamBuilder(
              stream: _cloudFirestoreService.getArtists('artistas'),
              builder: (context, AsyncSnapshot<List<ArtistModel>> snapshot) {
                if ( snapshot.hasError ) {
                  print('Error al obtener artistas: ${ snapshot.error }');
                  return Text('Error: ${ snapshot.error }');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}