import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  final supabase=Supabase.instance.client.from('todo').stream(primaryKey: ['id']).eq('name', 'taufiq');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder(

        stream: supabase, builder: (BuildContext context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {

          print('lkhggf');
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final data=snapshot.data!;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: ((context, index) {
              final country = data[index];
              return ListTile(
                subtitle: Text(country['age'].toString()),
                title: Text(country['name']),
              );
            }),
          );
      },

      )
    );
  }
}
