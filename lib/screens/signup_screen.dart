import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../utils/page_transitions.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? pass;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Sign Up")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white30,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Full Name",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requird";
                                } else if (!(value[0] ==
                                    value[0].toUpperCase())) {
                                  return "First Letter must be uppercase";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(labelText: "Email"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requird";
                                } else if (!value.contains("@")) {
                                  return "Email must have @";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Password",
                              ),
                              onChanged: (value) => pass = value,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requird";
                                } else if (value.length < 6) {
                                  return "Password must be at least 6 characters";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This field is requird";
                                } else if (value != pass) {
                                  return "Password doesn't match";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Logged in Successfully"),
                          backgroundColor: Colors.green,
                        ),
                      );
                      FadeTransitionHelper.navigateWithFade(
                        context,
                        HomeScreen(),
                      );
                    }
                  },
                  child: Text("Sign In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
