import 'package:flutter/material.dart';

void main() {
runApp(gridView());
}
class gridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "gridView",
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.grey
     ),
     home: gridViewScreen(),
   );
  }
}

class gridViewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final colorArr = [Colors.grey,
      Colors.blueGrey,
      Colors.cyan,
      Colors.cyanAccent,
      Colors.pink,
      Colors.purple,
      Colors.orange,
      Colors.green];

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.count(crossAxisCount: 4,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        Container(color: colorArr[0],),
        Container(color: colorArr[1],),
        Container(color: colorArr[2],),
        Container(color: colorArr[3],),
        Container(color: colorArr[4],),
        Container(color: colorArr[5],)
      ],
      )
    );
  }
}