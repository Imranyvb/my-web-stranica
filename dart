import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerUser(String email, String password) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    print("Korisnik registrovan!");
  } catch (e) {
    print("Greška pri registraciji: $e");
  }
}
