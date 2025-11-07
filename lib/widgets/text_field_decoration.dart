import 'package:flutter/material.dart';

InputDecoration textFieldDecoration({String? hint}) {
  return InputDecoration(
    prefixIcon: Icon(Icons.search),
    hintText: hint ?? "Ask Meta AI or Search",
    hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),

    border: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 128, 122, 122)),
      borderRadius: BorderRadius.circular(17),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 128, 122, 122)),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
