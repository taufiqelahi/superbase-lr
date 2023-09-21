import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supabase ',style: TextStyle(fontSize: 30),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('Show table data',style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
