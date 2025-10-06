import 'package:fisis/Persons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  Persons? person;

  ProfilePage({required this.person});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;

    return Scaffold(
      extendBodyBehindAppBar: true, // body AppBar'ın arkasına geçer
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black), // ikon renkleri
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.0, 0.5), // x1=-207, y1=129’e yaklaşık
            end: Alignment(0.06, 1.94),  // x2=24.6145, y2=500.661’e yaklaşık
            colors: [
              Color(0xFFFFC122), // start
              Color(0xFFFFDDAA), // middle
              Color(0xFFFFE5C2), // end
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.1, bottom: screenWidth * 0.25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.family_restroom, size: screenWidth * 0.2,),
                    Text(
                      "Aile Bilgi Sistemine Hoşgeldiniz",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenWidth * 0.05),
                    child: Text("T.C: ${widget.person!.person_tc}", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.06),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenWidth * 0.05),
                    child: Text("Adı: ${widget.person!.person_name}", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.06,),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenWidth * 0.05),
                    child: Text("Soyadı: ${widget.person!.person_lastName}", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.06,),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenWidth * 0.05),
                    child: Text("Doğum Tarihi: ${widget.person!.person_birthDay}", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.06,),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenWidth * 0.05),
                    child: Text("E-devlet Şifresi: ${widget.person!.e_devlet_password}", style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.06,),),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
