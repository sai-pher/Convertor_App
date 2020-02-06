import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

final _backgroundColor = Colors.green[100];

class CategoryScreen extends StatelessWidget {
  const CategoryScreen();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  _categoryListView() => ListView.builder(
      itemCount: _categoryNames.length,
      itemBuilder: (BuildContext context, int index) => Category(
            name: _categoryNames[index],
            icon: Icons.account_box,
            color: _baseColors[index],
          ));

  _categoryListBuild(List<Category> categoryList) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return categoryList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    // _TODO: The AppBar text should say 'Unit Converter' with a font size of 30.0, and an elevation of 0.0.
    // _TODO: A list of 8 Categories should be shown on the screen. You should be able to scroll down the list.
    //  There should be 8.0 horizontal padding around this list.
    // TODO: The AppBar and app body should be the same color. In our example, we use Colors.green[100].

    // _TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final List<Category> _categoryList = <Category>[];

    for (var i = 0; i < _categoryNames.length; i += 1) {
      _categoryList.add(Category(
          name: _categoryNames[i],
          icon: Icons.add_circle_outline,
          color: _baseColors[i]));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      child: Container(
        child: _categoryListView(),
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
