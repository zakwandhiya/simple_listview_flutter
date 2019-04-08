import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageUrl = [
    "https://cdn.vuetifyjs.com/images/cards/sunshine.jpg",
    "https://cdn.vuetifyjs.com/images/cards/docks.jpg",
    "https://cdn.vuetifyjs.com/images/cards/desert.jpg",
    "https://vuetifyjs.com/themes/parallax-starter/assets/hero.jpeg",
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple ListView"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: imageUrl.length,
          itemBuilder: (context, position) {
            return CustomCard(imageUrl: this.imageUrl[position]);
          },
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.imageUrl}); 
  //flag required digunakan untuk meruah opsional named parameter menjadi required named parameter


  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network( //Image.network digunakan untuk mengambil gambar dari internet
        imageUrl ,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
