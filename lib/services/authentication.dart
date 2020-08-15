import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/ZIPScreen.dart';

void register(email,password,context)
async{
  email="akhil@gmail.com";
  password="123456";
  FirebaseAuth _auth= FirebaseAuth.instance;
  try {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    var user = result.user;
    if (user != null) {
      print("registered successfully");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: context(ZIPScreen())));
    }
  }catch(e)
  {
    print(e);
  }
}