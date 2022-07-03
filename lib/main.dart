// ignore_for_file: non_constant_identifier_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MHD Tech'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final db = FirebaseFirestore.instance;
  TextEditingController name_controler = TextEditingController();
  TextEditingController price_controler = TextEditingController();

  TextEditingController cont_controler = TextEditingController();

  void insertData() {
    // [START add_data_set_document_1]
    final city = <String, String>{
      "name": name_controler.text,
      "price": price_controler.text,
      "countity": cont_controler.text
    };

    db
        .collection("prodect")
        .doc("listProdect")
        .set(city)
        // ignore: avoid_print
        .onError((e, _) => print("Error writing document: $e"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: name_controler,
            ),
            TextFormField(
              controller: price_controler,
            ),
            TextFormField(
              controller: cont_controler,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Firebase.initializeApp();
        insertData();
      },
      backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
      
      
    );
  }
}
