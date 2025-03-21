import 'package:flutter/material.dart';
import 'package:flutter_fbase/screens/artist_screen.dart';
import 'package:flutter_fbase/services/auth_service.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _authService = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenido a la aplicación de Música'),
            ElevatedButton.icon(
              onPressed: () async {
                final user = await _authService.signInWithGoogle();
                if ( mounted && user != null ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ArtistScreen()
                    ),
                  );
                }
              },
              icon: const Icon(Icons.login),
              label: const Text('Iniciar sesión con Google'),
            ),
          ],
        ),
      ),
    );
  }
}