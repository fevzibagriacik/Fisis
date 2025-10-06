import 'package:fisis/AddPage.dart';
import 'package:fisis/AdminProfilePage.dart';
import 'package:fisis/Persons.dart';
import 'package:fisis/PersonsDao.dart';
import 'package:fisis/ProfilePage.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {

  Future<List<Persons>> getAllPersons() async{
    var personList = await PersonsDao().getAllPersons();

    return personList;
  }

  @override
  void initState() {
    super.initState();

    getAllPersons();
  }

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: screenWidth * 0.09),
          child: FutureBuilder(
              future: getAllPersons(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  var personList = snapshot.data;

                  return GridView.builder(
                    itemCount: personList!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1,
                    ),
                    itemBuilder: (context, index){
                      var person = personList[index];

                      return Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AdminProfilePage(person: person,)));
                          },
                          child: Card(
                            elevation: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            color: Color(0xFFFF6643),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_circle, size: screenWidth * 0.15, color: Colors.white,),
                                  Text(
                                    "${person.person_name!} ${person.person_lastName!}",
                                    style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.white,),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }else{
                  return Center();
                }
              },
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xFF9A0000),
            child: Icon(Icons.add, color: Colors.white, size: screenWidth * 0.1,),
        ),
    );
  }
}
