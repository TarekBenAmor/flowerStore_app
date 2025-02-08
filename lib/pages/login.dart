import 'package:flower_app/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: [
              const SizedBox(height: 64,),
              MyTextField(
                textIputTypeee: TextInputType.emailAddress,
                isPassword: false,
                hintTexttt: "Entrez Votre Email...",
              ),
              const SizedBox(height: 32,),
              MyTextField(
                textIputTypeee: TextInputType.text,
                isPassword: true,
                hintTexttt: "Entrez Votre Password...",
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}


