import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  final String _title;
  final String _body;

  const RegularText(this._title, this._body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(_title),
        Text(_body),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  final Color _color;

  TitleText(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('hi'),
    );
  }
}
