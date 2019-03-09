import 'package:flutter/material.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleAppState();
  }
}

class _SimpleAppState extends State<SimpleApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeMaker()
    );
  }


}
class HomeMaker extends StatelessWidget {
  BuildContext context;


  String mSampleText = "Previus text";
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(mSampleText),
          SizedBox(
            height: 30.0,
            width: 10.0,
          ),
          RaisedButton(
              child: Text('Press'),
              onPressed: () {
               // setState(() => mSampleText = "First Text Display");
              }),
          SizedBox(
            height: 30.0,
            width: 10.0,
          ),
          RaisedButton(
            child: Text('Next Page'),
            onPressed:
            _next,


          )
        ],
      ),
    );
  }

  _next(){
    Navigator.of(context).push(new MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('My Page')),
          body: Center(
            child: FlatButton(
              child: Text('POP'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    ));

  }
}