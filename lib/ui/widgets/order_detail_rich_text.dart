import 'package:flutter/material.dart';

class LabelDetailRichText extends StatelessWidget {
  final String labelText, detailText;
  const LabelDetailRichText({
    Key? key,
    required this.labelText,
    required this.detailText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return RichText(
        text: TextSpan(
            text: '$labelText, ',
            style: _textTheme.bodyText1!
                .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
            children: [
          TextSpan(
              text: detailText,
              style: _textTheme.bodyText1!
                  .copyWith(fontSize: 18.0, fontWeight: FontWeight.normal))
        ]));
  }
}
