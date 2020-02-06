import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';
import 'package:hello_rectangle/categoryScreen.dart';

void main() {
  runApp(
    UnitConverterApp(),
//    MaterialApp(
//      title: 'Hello Rectangle',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Hello Rectangle'),
//        ),
//        body: HelloRectangle(),
//      ),
//    ),
  );
}

/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories].
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      // TODO: Instead of pointing to exactly 1 Category widget,
      // our home should now point to an instance of the CategoryRoute widget.
      home: CategoryScreen(),
    );
  }
}

class UnitConverter extends StatelessWidget {
  final String _categoryName = 'Cake';
  final IconData _categoryIcon = Icons.cake;
  final MaterialAccentColor _categoryColor = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Unit convertor',
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Center(
          child: Category(
              name: _categoryName, icon: _categoryIcon, color: _categoryColor),
        ),
      ),
    );
  }
}
