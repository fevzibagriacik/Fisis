import 'package:fisis/AdminPage.dart';
import 'package:fisis/Persons.dart';
import 'package:fisis/PersonsDao.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  Persons person;

  UpdatePage({required this.person});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {

  var tcController = TextEditingController();
  var nameController = TextEditingController();
  var lastnameController = TextEditingController();
  var passwordController = TextEditingController();
  var birthdayController = TextEditingController();
  var edevletPasswordController = TextEditingController();

  Future<void> updatePerson(int person_id, String person_tc, String person_name, String person_lastname,
      String person_password, String person_birthday, String e_devlet_password) async{

    await PersonsDao().updatePerson(person_id, person_tc, person_name, person_lastname,
        person_password, person_birthday, e_devlet_password);
  }

  @override
  void initState() {
    super.initState();

    tcController.text = widget.person.person_tc!;
    nameController.text = widget.person.person_name!;
    lastnameController.text = widget.person.person_lastName!;
    passwordController.text = widget.person.person_password!;
    birthdayController.text = widget.person.person_birthDay!;
    edevletPasswordController.text = widget.person.e_devlet_password!;
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
        title: Text("${widget.person.person_name} ${widget.person.person_lastName}",
          style: TextStyle(fontSize: screenWidth * 0.1, color: Colors.white,
            fontWeight: FontWeight.bold,),),
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
                controller: edevletPasswordController,
                onChanged: (controller){
                  edevletPasswordController.text = controller;
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Uyarı"),
                          content: Text("Güncellemek istediğinize emin misiniz?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                updatePerson(
                                  widget.person.person_id!,
                                  tcController.text,
                                  nameController.text,
                                  lastnameController.text,
                                  passwordController.text,
                                  birthdayController.text,
                                  edevletPasswordController.text,
                                );
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdminPage(),
                                  ),
                                );
                              },
                              child: Text("Evet"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Hayır"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF5600),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Icon(Icons.update, size: screenWidth * 0.08,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
