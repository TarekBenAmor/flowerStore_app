import 'package:flower_store_app/pages/register.dart';
import 'package:flower_store_app/shared/colors.dart';
import 'package:flower_store_app/shared/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: decorationTextfield.copyWith(
                    hintText: "Enter Your Email...",
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: decorationTextfield.copyWith(
                    hintText: "Enter Your Password...",
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btnGreen,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 92, 89, 89),
                            fontSize: 18)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text("Sign up",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 31, 30, 30),
                              fontSize: 18)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
