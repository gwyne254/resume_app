import 'package:flutter/material.dart';

const double hpad = 10.0;

class TitleText extends StatelessWidget {
  final String _title;

  const TitleText(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, hpad, 0, hpad),
          child: Text(_title),
        )
      ],
    );
  }
}

class RegularText extends StatelessWidget {
  final String _body;

  const RegularText(this._body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, hpad, 0, hpad),
          child: Text(_body),
        )
      ],
    );
  }
}
