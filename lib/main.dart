import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar:AppBar(title: Text("Hello World"), backgroundColor: Colors.red,),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            Text("Welcome to my app", style: GoogleFonts.tiltNeon(textStyle: TextStyle(fontSize: 32, color: Colors.blue)),),
            SizedBox(height: 8,),
            Text("I hope you enjoy it", style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 24, color: Colors.green)),),
            SizedBox(height: 8,),
            Text("Thank you for visiting", style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 18, color: Colors.orange)),),
            SizedBox(height: 8,),
            Image.network("https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/b1/ac/e8.jpg"),
            SizedBox(height: 8,),
            Image.asset("assets/hungry_developer.jpg"),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left"),
                SizedBox(width: 8,),
                Text("This is right")
              ],
            ),
            TextField(decoration: InputDecoration(hintText: "Enter your name"), controller: nameEditingController,),
            TextButton(onPressed: (){
              Fluttertoast.showToast(
                  msg: "Hello ${nameEditingController.text}",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }, child: Text("Press Me"))
          ],
        )),
      ),
    );
  }
}

