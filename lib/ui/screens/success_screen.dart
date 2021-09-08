import 'package:africola/core/data/string_constants.dart';
import 'package:africola/ui/screens/farmer_route.dart';
import 'package:flutter/material.dart';

import 'login_route.dart';

class SuccessScreen extends StatelessWidget {
  static const id = kSuccessRouteId;
  //final String appBarTitle, headerText, messageText;
  const SuccessScreen({
    Key? key,
    /* required this.appBarTitle,
    required this.headerText,
    required this.messageText, */
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Container(
        width: _size.width,
        height: _size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/checked.png',
              height: 150.0,
              width: 150.0,
            ),
            Text(
              'Account Created!',
              style: _textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Login to your account',
              style: _textTheme.bodyText1,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Login.id);
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
