import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superbase_learn/pages/home_page.dart';
import 'package:superbase_learn/pages/show_data.dart';
import 'package:superbase_learn/services/data_func.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "enter your name"
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                  hintText: "enter your age"
              ),
            ),
            SizedBox(height: 30,),
            CupertinoButton(
                color: Colors.blue,
                child: Text('send'),

                onPressed: (){
                  DataFunc().addData(name: nameController.text, age: int.parse(ageController.text));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowData()));
                })
          ],
        ),
      ),
    );
  }
}
