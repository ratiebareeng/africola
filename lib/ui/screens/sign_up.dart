import 'package:africola/core/data/string_constants.dart';
import 'package:africola/core/data/string_data.dart';
import 'package:africola/ui/widgets/my_outlined_button.dart';
import 'package:africola/ui/widgets/scrolling_container.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const id = kSignUpRouteId;
  final formKey;
  final AutovalidateMode autoValidateMode;
  final Function()? onPressed;
  const SignUp(
      {Key? key,
      required this.formKey,
      required this.autoValidateMode,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: ScrollingContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Create an account below'),
            SizedBox(height: 40.0),
            Form(
                key: formKey,
                autovalidateMode: autoValidateMode,
                child: Column(
                  children: [
                    DropdownButtonFormField<String>(
                        value: kUserTypes[0],
                        onChanged: (userType) {
                          if (userType != null && userType.isNotEmpty)
                            print(userType);
                        },
                        /* validator: (userType) {
                          if (userType == null ||
                              userType.contains(kBotswanaDistricts[0])) {
                            return 'Location district required';
                          }
                        }, */
                        items: List.generate(
                            kUserTypes.length,
                            (index) => DropdownMenuItem(
                                  child: Text(kUserTypes[index]),
                                  value: kUserTypes[index],
                                ))),
                    SizedBox(height: 10.0),
                    TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(labelText: 'Full Name'),
                      validator: (name) {
                        if (name == null || name.isEmpty) {
                          return 'Please enter name';
                        } else if (name.split(' ').length < 2) {
                          return 'Please enter full name';
                        }
                      },
                    ),
                    SizedBox(height: 10.0),
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
                    TextFormField(
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      decoration:
                          InputDecoration(labelText: 'City/Town/Village'),
                      validator: (location) {
                        if (location == null || location.isEmpty) {
                          return 'Please enter City/Town/Village';
                        }
                      },
                    ),
                    SizedBox(height: 10.0),
                    DropdownButtonFormField<String>(
                        value: kBotswanaDistricts[0],
                        hint: Text('Location District'),
                        validator: (value) {
                          if (value == null ||
                              value.contains(kBotswanaDistricts[0])) {
                            return 'Location district required';
                          }
                        },
                        onChanged: (value) {
                          if (value != null && value.isNotEmpty) print(value);
                        },
                        items: kBotswanaDistricts
                            .map((district) => DropdownMenuItem<String>(
                                  child: Text(district),
                                  value: district,
                                ))
                            .toList()),
                    SizedBox(height: 10.0),
                  ],
                )),
            MyOutlinedButton(
              onPressed: onPressed,
              icon: Icons.create,
              label: 'Create Account',
              color: 200,
            ),
          ],
        ),
      ),
    );
  }
}
