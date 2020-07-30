import 'package:flutter/material.dart';
import 'package:wordy/createWord.dart';

class WordDetail extends StatelessWidget {
  static const routeName = '/wordDetail';

  @override
  Widget build(BuildContext context) {
    final WordContent args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
    //body: //MaterialButton(child: Text("title"), onPressed: () => _createWord(context, args.title)),
    floatingActionButton: FloatingActionButton(
        onPressed: () =>_createWord(context, args.title),
        child: Icon(Icons.add),
    ),
    );
  }

  _createWord(BuildContext context, String title){
    Navigator.pushNamed(
        context,
        CreateWord.routeName,
        arguments: CreateWordContent(title));
  }

}


class WordContent {
  final String title;

  WordContent(this.title);
}