import 'package:africola/core/data/string_constants.dart';
import 'package:africola/core/data/string_data.dart';
import 'package:africola/ui/screens/farmer_route.dart';
import 'package:africola/ui/widgets/my_outlined_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const id = kLoginRouteId;
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        width: _size.width,
        height: _size.height,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
                value: kUserTypes[0],
                onChanged: (userType) {
                  if (userType != null && userType.isNotEmpty) print(userType);
                },
                items: List.generate(
                    kUserTypes.length,
                    (index) => DropdownMenuItem(
                          child: Text(kUserTypes[index]),
                          value: kUserTypes[index],
                        ))),
            TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'Please enter email';
                        } else if (!EmailValidator.validate(email, true)) {
                          return 'Please enter valid email address';
                        }
                      },
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      maxLines: 1,
                      maxLength: 18,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(labelText: 'Password'),
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return 'Please enter password';
                        }
                      },
                    ),
                    SizedBox(height: 10.0),
            MyOutlinedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, FarmerRoute.id, (route) => false);
                },
                icon: Icons.login,
                label: 'Login',
                color: 500)
          ],
        ),
      ),
    );
  }
}
