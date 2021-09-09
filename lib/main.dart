import 'package:africola/core/data/string_data.dart';
import 'package:africola/ui/class_router.dart';
import 'package:africola/ui/screens/agric_shops_route.dart';
import 'package:africola/ui/screens/courier_route.dart';
import 'package:africola/ui/screens/farmer_route.dart';
import 'package:africola/ui/screens/govt_route.dart';
import 'package:africola/ui/screens/login_route.dart';
import 'package:africola/ui/screens/sign_up.dart';
import 'package:africola/ui/screens/success_screen.dart';
import 'package:africola/ui/screens/vendor_route.dart';
import 'package:africola/ui/widgets/my_outlined_button.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'core/data/string_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: ClassRouter.onGenerateRoute,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return FarmerRoute();
    /* return SignUp(
      formKey: _formKey,
      autoValidateMode: _autoValidateMode,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Navigator.pushNamed(context, Login.id);

          Navigator.pushNamedAndRemoveUntil(
            context,
            SuccessScreen.id,
            (route) => false,
            /* arguments: {
                'headerText': 'Account Created!',
                'messageText': 'Login to your account',
                'appBarTitle': 'Welcome',
              } */
          );
        } else {
          setState(() {
            _autoValidateMode = AutovalidateMode.always;
          });
        }
      },
    ); */
  }
}
