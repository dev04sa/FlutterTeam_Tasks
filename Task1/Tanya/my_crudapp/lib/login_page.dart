import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String studentName,studentId,studyProgram;
  late double studentCGPA;


  getStudentName(name){
    this.studentName=name;
  }

  getStudentID(id){
    this.studentId=id;
  }

  getStudytProgram(program){
    this.studyProgram=program;
  }

  getStudentCGPA(cgpa){
    this.studentCGPA=cgpa;
  }

  createData(){
    print("Created");

    DocumentReference documentReference= FirebaseFirestore.instance.collection("MyStudents").doc("studentName");

    Map<String, dynamic> MyStudents={
     " studentName":studentName,
     "studentId":studentId,
     "studyProgram":studyProgram,
     "CGPA":studentCGPA,
    };

    documentReference.set(MyStudents).whenComplete(() {print("$studentName created");});
  }

  readData(){
    print("Read");
  }

  updateData(){
    print("Updated");
  }

  deleteData(){
    print("Deleted");
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.yellow,
          centerTitle: true,
          automaticallyImplyLeading: true,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  "Student App",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assests/images/avatar.PNG"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
           
            SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.890,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 64))),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    cursorColor: Color.fromARGB(255, 64, 64, 64),
                    decoration: InputDecoration(
                      icon: Image.asset("assests/images/name.png",height:50,width:20,),
                      hintText:"Name",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onChanged: (String name){
                      getStudentName(name);
                    }),
              ),
            ),
             SizedBox(
              height: 20,
            ),
                 SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.890,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 64))),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    cursorColor: Color.fromARGB(255, 64, 64, 64),
                    decoration: InputDecoration(
                      icon: Image.asset("assests/images/student-id.png",height:20,width:20,),
                      hintText:"Student ID",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onChanged: (String id){
                      getStudentID(id);
                    }),
              ),
            ),
             SizedBox(
              height: 20,
            ),
                  SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.890,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 64))),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    cursorColor: Color.fromARGB(255, 64, 64, 64),
                    decoration: InputDecoration(
                      icon: Image.asset("assests/images/student program.png",height:20,width:20,),
                      hintText:"Study Program",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onChanged: (String program){
                      getStudytProgram(program);
                    }),
              ),
            ),
             SizedBox(
              height: 20,
            ),
                   SizedBox(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.890,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 64))),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                    cursorColor: Color.fromARGB(255, 64, 64, 64),
                    decoration: InputDecoration(
                      icon: Image.asset("assests/images/cgpa.png",height:20,width:20,),
                      hintText:"CGPA",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    onChanged: (String cgpa){
                      getStudentCGPA(cgpa);
                    }),
              ),
            ),
             SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                ElevatedButton( onPressed: () {createData();},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)) ,child: Text("Create",style: TextStyle(color: Colors.black),)),
                ElevatedButton( onPressed: () {readData();} ,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),child: Text("Read",style: TextStyle(color: Colors.black),)),
                ElevatedButton( onPressed: () {updateData();},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)) ,child: Text("Update",style: TextStyle(color: Colors.black),)),
                ElevatedButton( onPressed: () {deleteData();},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)) ,child: Text("Delete",style: TextStyle(color: Colors.black),)),
              ],
              )],
               ),
               )
               ),
               );
  }
}
