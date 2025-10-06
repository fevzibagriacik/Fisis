import 'package:fisis/DatabaseSupport.dart';
import 'package:fisis/Persons.dart';

class PersonsDao{

  Future<List<Persons>> getAllPersons() async{
    var db = await DatabaseSupport.databaseAccess();

    List<Map<String,dynamic>> maps = await db.rawQuery(
      "SELECT * FROM persons"
    );

    return List.generate(maps.length, (i){
      var row = maps[i];

      return Persons(row["person_id"], row["person_tc"], row["person_name"], row["person_lastname"], row["person_password"],
          row["person_birthday"], row["person_e_devlet_password"]);
    });
  }

  Future<Persons> searchPerson(String person_name, String person_lastname,
      String person_password) async{
    var db = await DatabaseSupport.databaseAccess();

    List<Map<String, dynamic>> maps = await db.rawQuery(
      "SELECT * FROM persons "
          "WHERE LOWER(person_name) = LOWER(?) "
          "AND LOWER(person_lastname) = LOWER(?) "
          "AND LOWER(person_password) = LOWER(?) "
          "LIMIT 1",
      [person_name, person_lastname, person_password],
    );

    var personList = List.generate(maps.length, (i){
      var row = maps[i];

      return Persons(row["person_id"], row["person_tc"], row["person_name"], row["person_lastname"], row["person_password"],
          row["person_birthday"], row["person_e_devlet_password"]);
    });

    return personList[0];
  }

  Future<void> addPerson(String person_tc, String person_name, String person_lastname,
      String person_password, String person_birthday, String e_devlet_password) async{
    var db = await DatabaseSupport.databaseAccess();

    await db.insert("persons", {
      "person_tc" : person_tc,
      "person_name" : person_name,
      "person_lastname" : person_lastname,
      "person_password" : person_password,
      "person_birthday" : person_birthday,
      "person_e_devlet_password" : e_devlet_password
    });
  }
  
  Future<void> deletePerson(int person_id) async{
    var db = await DatabaseSupport.databaseAccess();
    
    await db.delete("persons", where: "person_id = ?", whereArgs: [person_id]);
  }

  Future<void> updatePerson(int person_id, String person_tc, String person_name, String person_lastname,
      String person_password, String person_birthday, String e_devlet_password) async{
    var db = await DatabaseSupport.databaseAccess();

    Map<String,dynamic> data = {
      "person_tc" : person_tc,
      "person_name" : person_name,
      "person_lastname" : person_lastname,
      "person_password" : person_password,
      "person_birthday" : person_birthday,
      "person_e_devlet_password" : e_devlet_password
    };

    await db.update("persons", data, where: "person_id = ?", whereArgs: [person_id]);
  }

}