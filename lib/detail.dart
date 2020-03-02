import 'package:flutter/material.dart';
import 'main.dart';

class MyDetail extends StatefulWidget{
  Piths _piths;
  MyDetail(Piths piths){
    _piths = piths;
  }

  @override
  State<StatefulWidget> createState() => _MyDetail(_piths);
}

class _MyDetail extends State<MyDetail>{

  Piths _piths;
  _MyDetail (Piths piths){
    _piths = piths;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        title: Text(_piths.name,style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(tag: _piths, child: Image.asset(_piths.image,width: 200,),),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(_piths.description,style: TextStyle(fontFamily: 'Muli'),),
            ),
          ],
        ),
      ),
    );
  }

}