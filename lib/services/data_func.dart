import 'package:supabase_flutter/supabase_flutter.dart';

class DataFunc{

  addData({required String name ,required int age}) async {

    await Supabase.instance.client.from('todo').insert({'name':name,'age':age});
  }


}
