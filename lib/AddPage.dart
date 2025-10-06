import 'package:fisis/AdminPage.dart';
import 'package:fisis/Persons.dart';
import 'package:fisis/PersonsDao.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  var tcController = TextEditingController();
  var nameController = TextEditingController();
  var lastnameController = TextEditingController();
  var passwordController = TextEditingController();
  var birthdayController = TextEditingController();
  var edevletController = TextEditingController();

  Future<void> addPerson(String person_tc, String person_name, String person_lastname,
      String person_password, String person_birthday, String e_devlet_password) async{
    var person = await PersonsDao().addPerson(person_tc, person_name, person_lastname, person_password, person_birthday, e_devlet_password);
  }
  
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;

    return Scaffold(
      backgroundColor: Color(0xFFFD8244),
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5600),
        centerTitle: true,
        title: Text("Yeni Üye", style: TextStyle(fontSize: screenWidth * 0.1, color: Colors.white, fontWeight: FontWeight.bold,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: screenWidth * 0.3,
                  color: Color(0xFFFF5600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenWidth * 0.15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFD8244),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(45)),
                    ),
                    width: double.infinity,
                    height: screenWidth * 0.15,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.12, right: screenWidth * 0.12),
              child: TextField(
                controller: tcController,
                onChanged: (controller){
                  tcController.text = controller;
                },
                decoration: InputDecoration(
                  label: Text("T.C", style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.12, right: screenWidth * 0.12, top: screenWidth * 0.07),
              child: TextField(
                controller: nameController,
                onChanged: (controller){
                  nameController.text = controller;
                },
                decoration: InputDecoration(
                  label: Text("Ad", style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.12, right: screenWidth * 0.12, top: screenWidth * 0.07),
              child: TextField(
                controller: lastnameController,
                onChanged: (controller){
                  lastnameController.text = controller;
                },
                decoration: InputDecoration(
                  label: Text("Soyad", style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.12, right: screenWidth * 0.12, top: screenWidth * 0.07),
              child: TextField(
                controller: passwordController,
                onChanged: (controller){
                  passwordController.text = controller;
                },
                decoration: InputDecoration(
                  label: Text("Şifre", style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.12, right: screenWidth * 0.12, top: screenWidth * 0.07),
              child: TextField(
                controller: birthdayController,
                onChanged: (controller){
                  birthdayController.text = controller;
                },
                decoration: InputDecoration(
                  label: Text("Doğum Günü", style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.12, right: screenWidth * 0.12, top: screenWidth * 0.07),
              child: TextField(
                controller: edevletController,
                onChanged: (controller){
                  edevletController.text = controller;
                },
                decoration: InputDecoration(
                  label: Text("E-devlet Şifresi", style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.black, fontWeight: FontWeight.bold),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenWidth * 0.08, bottom: screenWidth * 0.12),
              child: SizedBox(
                width: screenWidth * 0.24,
                height: screenWidth * 0.12,
                child: ElevatedButton(
                    onPressed: (){

                      if(tcController.text == "" || nameController.text == "" || lastnameController.text == ""
                          || passwordController.text == "" || birthdayController.text == "" || edevletController.text == ""){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Eksik boşlukları doldurunuz!", style: TextStyle(color: Colors.red,),),
                          ),
                        );
                      }else{
                        addPerson(tcController.text, nameController.text, lastnameController.text,
                            passwordController.text, birthdayController.text, edevletController.text);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${nameController.text} ${lastnameController.text} eklendi."),
                          ),
                        );

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminPage()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF5600),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Icon(Icons.person_add, size: screenWidth * 0.08,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
