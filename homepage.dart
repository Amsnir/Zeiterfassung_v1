import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zeiterfassung_v1/hivedb_Klassen/buchungen.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  void writeBox(){
    //box.put(1, user);
    final newBuchung = Buchungen(BU_ID: 3000, BU_DN_ID: 22, BU_TIMESTAMP: DateTime.now(), BU_ABW_NR: 1);
    buchen(newBuchung);
  }

  void buchen(Buchungen buchungen){
    final buchungBox = Hive.box<Buchungen>('buchungen');
    buchungBox.add(buchungen);
  }


  void readBox(){
   // final buchungBox = Hive.box<Buchungen>('buchungen');
   // var userModel = buchungBox.getAt(4) as Buchungen;
   //print(userModel.BU_ID);
  }


// final _myBox = Hive.box('myBox');

  void writeData(){
    // _myBox.put(1, ['Amir', 'Ikanovic', true]);
    // _myBox.put(2, ['Janis', 'Papai', true]);
  }

  void readData(){
    // print(_myBox.get(2));
  }

  void deleteData() {
    // _myBox.delete(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blue[200],
              child: const Text('Write'),
              ),
              MaterialButton(
              onPressed: readData,
              color: Colors.red[200],
              child: const Text('Read'),
              ),
              MaterialButton(
              onPressed: deleteData,
              color: Colors.green[200],
              child: const Text('Delete'),
              ),
              MaterialButton(
              onPressed: writeBox,
              color: Colors.green[200],
              child: const Text('writeBox'),
              ),
              MaterialButton(
              onPressed: readBox,
              color: Colors.green[200],
              child: const Text('readBox'),
              ),
          ]
        ))
    );
  }
}
