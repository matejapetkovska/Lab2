import 'package:flutter/material.dart';
import './clothes_question.dart';
import './clothes_answer.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatefulWidget {
    
    @override
    State<StatefulWidget> createState(){
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp>{


  void _iWasTapped() {
    setState(() {
      _questionIndex+=1;
    });
    print('I was tapped');
  }
  var questions =[
    {'Question':"Choose a clothes category:",
    'Answer':['Dresses','Pants','Coats']},
    {'Question':"Choose a color:",
    'Answer':['Red','White','Black']},
    {'Question':"Choose a brand:",
    'Answer':['Replay','Guess','Chanel']}
  ];
  var _questionIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Clothes App",
      home:Scaffold(appBar: AppBar(title:Text("Clothes"),) ,
      body: Column(children: [
        ClothesQuestion(questions[_questionIndex]['Question'] as String),
        ...(questions[_questionIndex]['Answer'] as List<String>).map((answer) {
          return ClothesAnswer(_iWasTapped, answer);
        })
      ]
      )
    )
    );
}
}