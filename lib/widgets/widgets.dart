import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    // borderSide: BorderSide(color: Color.fromARGB(255, 245, 155, 98), width: 2),
    borderSide: BorderSide(color:  Color.fromRGBO(85, 182, 111, 0.612), width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    // borderSide: BorderSide(color: Color.fromARGB(255, 245, 155, 98), width: 2),
    borderSide: BorderSide(color:  Color.fromRGBO(85, 182, 111, 0.612), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    // borderSide: BorderSide(color: Color(0xFFee7b64), width: 2),
    borderSide: BorderSide(color:  Color.fromRGBO(52, 168, 83, 100), width: 2),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}
