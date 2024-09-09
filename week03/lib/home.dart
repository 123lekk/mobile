import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:requests/requests.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UQuizApp')),
      body: Row(
        // Center the content within the available space
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {
                    // const url = 'https://fakestoreapi.com/products?limit=5';
                    const url = 'https://randomuser.me/api/';
                    Requests.get(url).then((r) {
                      print(r.json()['results'][0]['phone']);
                    });

                    // print('press'); // เพิ่ม ; ที่นี่
                  },
                ),
                Text("ศุภกิจ"),
              ],
            ),
          ),
          Expanded(child: Text("บุตชรินทร์")),
          Text("(เลิก)"),
        ],
      ),
    );
  }
}
