import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student App",),
      backgroundColor: Colors.yellow,
      centerTitle: true,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 22),),
      body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              CircleAvatar(
                radius: 80,
              ),
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    height: 42,
                    width: MediaQuery.of(context).size.width/2,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: Colors.red,
                    ),
                    child: const Text(
                      "LogOut",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
