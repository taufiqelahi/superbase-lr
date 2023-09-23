import 'package:supabase_flutter/supabase_flutter.dart';

class AuthFunc{
  Future<void> signInWithEmail({required String email,required String password}) async {

    final AuthResponse res = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: password,
    );

    print(res.user);
  }
}