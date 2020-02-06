import 'package:flutter/material.dart';

final EdgeInsetsGeometry _padding16 = EdgeInsets.all(8.0);
final EdgeInsetsGeometry _padding8 = EdgeInsets.all(8.0);
final double _rowHeight = 80.0;
final BorderRadius _borderRadius = BorderRadius.circular(_rowHeight / 2);

/// A custom [Category] widget.
///
/// This widget shows an [Icon] on the left and [Text] on the right.
/// Tapping on the widget shows an [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  const Category({
    Key key,
    @required this.name,
    @required this.icon,
    @required this.color,
  })  : assert(name != null),
        assert(icon != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print('Tapped');
          },
          child: Padding(
              padding: _padding8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: _padding16,
                    child: Icon(
                      icon,
                      size: _rowHeight * 0.6,
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
