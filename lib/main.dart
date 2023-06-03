import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MySnackBar(),

    )
  );
}
class MySnackBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
      ),
      body: Builder(
        builder: (context){
         return Center(
            child: ElevatedButton(
                child: Text("Show Snack Bar"),
                onPressed: (){
                  final snackbar = SnackBar
                    (content:Text("I am your snackbar"),
                    action: SnackBarAction(label: "undo", onPressed: (){}
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }),
          );
        },
      )
    );
  }

}

