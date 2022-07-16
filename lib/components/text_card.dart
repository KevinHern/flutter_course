import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final double spacing;
  final List<TextSpan> textSpanList;
  final String text;
  const TextCard(
      {required this.text,
      this.spacing = 8.0,
      this.textSpanList = const [],
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(spacing / 2),
        child: RichText(
          text: TextSpan(
            text: text,
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
                fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
                fontWeight: FontWeight.bold),
            children: textSpanList,
          ),
        ),
      ),
    );
  }
}

class DetailsTextCard extends StatelessWidget {
  final String implementationMessage, fileName;
  const DetailsTextCard(
      {required this.implementationMessage, required this.fileName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextCard(
      text: '',
      textSpanList: [
        TextSpan(
          text:
              "If you want to check $implementationMessage, read the comments in the $fileName file(s).",
          style: TextStyle(
              fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
              fontSize: Theme.of(context).textTheme.bodyText1!.fontSize! * 0.8,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
