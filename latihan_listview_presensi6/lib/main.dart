import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 34, 24, 21),
      ),
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    ));

class MainApp extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lolliop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}
