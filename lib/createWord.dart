import 'package:flutter/material.dart';
import 'package:wordy/wordDetail.dart';

class CreateWord extends StatelessWidget {
  static const routeName = '/createWord';

  @override
  Widget build(BuildContext context) {
    final CreateWordContent args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Create Word"),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(10),
        ),
        Text(args.word),
        Padding(
          padding: EdgeInsets.all(16),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Content here"),),),
        FlatButton(
            child: Text("Add Word Content"), onPressed: () => _addWord,
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
        ),])
    );
  }
  
  _addWord(){
    
  }
}

class CreateWordContent {
  final String word;

  CreateWordContent(this.word);
}