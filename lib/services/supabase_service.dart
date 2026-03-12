import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/mobil.dart';

class SupabaseService {
  final SupabaseClient _client = Supabase.instance.client;

  // --- AUTH ---
  Future<AuthResponse> signUp(String email, String password) async {
    return await _client.auth.signUp(email: email, password: password);
  }

  Future<AuthResponse> signIn(String email, String password) async {
    return await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _client.auth.signOut();
  }

  User? get currentUser => _client.auth.currentUser;

  // --- CRUD MOBIL ---
  Stream<List<Mobil>> getMobilStream() {
    return _client
        .from('mobil')
        .stream(primaryKey: ['id'])
        .order('id', ascending: false)
        .map((data) => data.map((item) => Mobil.fromMap(item)).toList());
  }

  Future<void> insertMobil(Mobil mobil) async {
    final data = mobil.toMap();
    // Use current user's ID if authenticated
    if (currentUser != null) {
      data['user_id'] = currentUser!.id;
    }
    await _client.from('mobil').insert(data);
  }

  Future<void> updateMobil(Mobil mobil) async {
    await _client.from('mobil').update(mobil.toMap()).eq('id', mobil.id!);
  }

  Future<void> deleteMobil(int id) async {
    await _client.from('mobil').delete().eq('id', id);
  }
}
