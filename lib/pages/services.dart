import 'package:supabase_flutter/supabase_flutter.dart';

class Services{
  Future<List<Map<String, dynamic>>> fetchData(){
  return Supabase.instance.client.from('todo').select<List<Map<String ,dynamic>>>();

  }

}