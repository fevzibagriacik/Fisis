import 'package:fisis/AdminPage.dart';
import 'package:fisis/HeaderClipper.dart';
import 'package:fisis/HeaderClipper2.dart';
import 'package:fisis/Persons.dart';
import 'package:fisis/PersonsDao.dart';
import 'package:fisis/ProfilePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var personNameController = TextEditingController();
  var personLastnameController = TextEditingController();
  var personPasswordController = TextEditingController();

  bool isWrongUser = false;

  final FocusNode _focusNode = FocusNode();

  Future<Persons> searchPerson(String person_name, String person_lastname, String person_password) async{
    var person = await PersonsDao().searchPerson(person_name, person_lastname, person_password);

    return person;

  }

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: HeaderClipper(),
                  child: Container(
                    color: Color(0xFFFFC123),
                    width: double.infinity,
                    height: screenHeight * 0.4,
                  ),
                ),
                ClipPath(
                  clipper: HeaderClipper2(),
                  child: Container(
                    color: Color(0xFFFFDDAA),
                    width: double.infinity,
                    height: screenHeight * 0.4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.1, top: screenWidth * 0.1),
                  child: Icon(Icons.family_restroom, color: Colors.black, size: screenWidth / 4.8,),
                )
              ],
            ),
            Column(
              children: [
                Text("Hesaba Giriş Yapın", style: TextStyle(fontSize: screenWidth / 13, fontWeight: FontWeight.bold,),),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.15, left: screenWidth * 0.15, top: screenWidth * 0.05),
                  child: TextField(
                    onChanged: (controller){
                      setState(() {
                        personNameController.text = controller;
                      });
                    },
                    controller: personNameController,
                    focusNode: _focusNode,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle, color: Colors.orange,),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellowAccent
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrange
                        ),
                      ),
                      label: Text("Ad"),
                      labelStyle: TextStyle(
                        color: Color(0xFFFFC122),
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.15, left: screenWidth * 0.15, top: screenWidth * 0.05),
                  child: TextField(
                    onChanged: (controller){
                      setState(() {
                        personLastnameController.text = controller;
                      });
                    },
                    controller: personLastnameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.orange,),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellowAccent
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        ),
                      ),
                      label: Text("Soyad"),
                      labelStyle: TextStyle(
                        color: Color(0xFFFFC122),
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.15, left: screenWidth * 0.15, top: screenWidth * 0.05),
                  child: TextField(
                    onChanged: (controller){
                      setState(() {
                        personPasswordController.text = controller;
                      });
                    },
                    controller: personPasswordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.date_range, color: Colors.orange,),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellowAccent
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        ),
                      ),
                      label: Text("Doğduğun Ay"),
                      labelStyle: TextStyle(
                        color: Color(0xFFFFC122),
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                  ),
                ),
                isWrongUser ?
                Text(
                  "Bilgiler yanlış, tekrar deneyiniz!",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: screenWidth * 0.035,
                  ),
                ) : Text(""),
                Padding(
                  padding: EdgeInsets.only(top: screenWidth * 0.05),
                  child: SizedBox(
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                        onPressed: () async{
                          personNameController.text = personNameController.text.trim();
                          personLastnameController.text = personLastnameController.text.trim();
                          personPasswordController.text = personPasswordController.text.trim();
        
                          try{
                            setState(() {
                              isWrongUser = false;
                            });
                            Persons person = await searchPerson(personNameController.text, personLastnameController.text, personPasswordController.text);

                            if(personNameController.text.toLowerCase().trim() == "fevzi" && personLastnameController.text.toLowerCase().trim() == "bağrıaçık" && personPasswordController.text.toLowerCase().trim() == "12345678"){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AdminPage()));
                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(person: person,)));

                            }

                          }catch(e){
                            setState(() {
                              isWrongUser = true;
                            });
                          }

                          personNameController.text = "";
                          personLastnameController.text = "";
                          personPasswordController.text = "";
        
                          FocusScope.of(context).requestFocus(_focusNode);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Color(0xFFFFC122),
                        ),
                        child: Text("GİRİŞ YAP", style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.w900, color: Colors.black),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



