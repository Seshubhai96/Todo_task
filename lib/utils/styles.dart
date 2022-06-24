import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Styles{
  static const primarycolour = Colors.purple;
  static const buttoncol = Colors.orange;
  static const redcol = Colors.red;
  static const blackcol = Colors.black;
}
class Appicons{
  static const add = Icon(Icons.add);
  static const email = Icon(Icons.email);
  static const phone = Icon(Icons.phone);
}

class AppStrings{
  static const emptyemail = "Email can't be empty";
  static const erroremail = "Invalid Email";
  static const emptynumber = "PhoneNumber Can't be empty";
  static const errorphonenumber = "Invalid PhoneNumber";
}

class AppTextstyles{
  static var errortextstyle = TextStyle(color:Styles.redcol,fontSize: Get.height/60);
}