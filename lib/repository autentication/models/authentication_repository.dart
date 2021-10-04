import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firabase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

// Cuando ocurre un error al registrarse
class SigUpFailure implements Exception {}

// Cuando ocurre un error en el Login
class LogInWithEmailAndPasswordFailure implements Exception {}

// Cuenaod ocurre un error en el Login de google
class LogInWithGoogleFailure implements Exception {}

// cuando ocurre un error cuando cerramos sesion
class LogoutFailure implements Exception {}

class AuthenticationRepository {
  AuthenticationRepository(
      {firabase_auth.FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignIn})
      : _firebaseAuth = firebaseAuth ?? firabase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  final firabase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
}

//
