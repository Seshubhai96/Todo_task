// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Customfield extends StatelessWidget {
  var controller = TextEditingController();
  FormFieldValidator<String>? customvalidator;
  ValueChanged<String>? changed;
   String? hint;
   void Function()? tapchek;
   TextInputType? inputType;
   Widget? label;
   List<TextInputFormatter>? inputformers;
   Customfield({this.changed,required this.controller,this.customvalidator,this.hint,this.label,this.inputType,this.inputformers,this.tapchek});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap:tapchek,
      keyboardType:inputType,
      inputFormatters:inputformers,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator:customvalidator,
      onChanged:changed,
      decoration: InputDecoration(
        hintText: hint,
        label: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(Get.height/50))
      ),
    );
  }
}