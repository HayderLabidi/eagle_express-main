// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 void Function()? onTap;
 final String text ;

   MyButton({super.key,required this .onTap,required this.text, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin:const EdgeInsets.symmetric(horizontal: 25),
        decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
          ),
        child:  Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              ),
            
          ),
        ),
      ),
    );
  }
}
