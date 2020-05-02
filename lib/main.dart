import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final control = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Enter the grade -> ",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: control, 
                      decoration:
                          InputDecoration(hintText: "Enter the grade here"),
                    ),
                  ),
                ],
              ),
              color: Colors.lightGreenAccent,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Enter the grade -> ",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: control,
                      decoration:
                          InputDecoration(hintText: "Enter the grade here"),
                    ),
                  ),
                ],
              ),
              color: Colors.yellowAccent,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Enter the grade -> ",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: control,
                      decoration:
                          InputDecoration(hintText: "Enter the grade here"),
                    ),
                  ),
                ],
              ),
              color: Colors.lightGreenAccent,
            ),
            Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Enter the grade -> ",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: control,
                        decoration:
                            InputDecoration(hintText: "Enter the grade here"),
                      ),
                    ),
                  ],
                ),
                color: Colors.yellowAccent),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Enter the grade -> ",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: control,
                      decoration:
                          InputDecoration(hintText: "Enter the grade here"),
                    ),
                  ),
                ],
              ),
              color: Colors.lightGreenAccent,
            ),
            Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Enter the grade -> ",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: control,
                        decoration:
                            InputDecoration(hintText: "Enter the grade here"),
                      ),
                    ),
                  ],
                ),
                color: Colors.yellowAccent),
          ],
        )
        
        ),
         floatingActionButton: FloatingActionButton(
           onPressed:(){
             return showDialog(
               context: context,
               builder: (context) {
                return AlertDialog(
                  content : Text(control.text),
                );
               });

         } ),
       
        );
    return scaffold;
  }
}
