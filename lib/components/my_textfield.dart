import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final TextEditingController text;
  final String hinText;
  final bool obscureText;
  final Widget? icon ;



   const MyTextField({
    super.key,
    required this.text, 
    required this.hinText,
    required this.obscureText,
    this.icon

    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                
                controller: text ,
                obscureText: obscureText,
                decoration: InputDecoration(
                  prefixIcon: icon,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hinText,
                ),
              ),
            );
  }
}