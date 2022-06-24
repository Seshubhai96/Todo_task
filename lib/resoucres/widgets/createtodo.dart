// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_task/controller/todocontroller.dart';
import 'package:todo_task/resoucres/helpers/validations.dart';
import 'package:todo_task/resoucres/widgets/customfield.dart';
import 'package:todo_task/resoucres/widgets/todolist.dart';
import 'package:todo_task/utils/styles.dart';

class Createtodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todocontroller _todocontroller = Get.find<Todocontroller>();
    return Obx((){
      return _todocontroller.loading.value?const Center(child: CircularProgressIndicator(),): Container(
      child:Form(
        key: _todocontroller.formkey,
        child: Padding(
          padding:EdgeInsets.symmetric(vertical: Get.height/60,horizontal: Get.width/60),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Customfield(tapchek: (){
            _todocontroller.showalredyexits.value=false;
          },inputType: TextInputType.emailAddress,controller:_todocontroller.emailcontroller.value,hint: 'Enter Email',label:Appicons.email,customvalidator: Formvalidations.emailvalidation,changed: (val){
          val=_todocontroller.emailcontroller.value.text;
          },),
          SizedBox(height: Get.height/60,),
          Customfield(tapchek: (){
            _todocontroller.showalredyexits.value=false;
          },inputType:TextInputType.phone,inputformers: [FilteringTextInputFormatter.digitsOnly],controller:_todocontroller.phonecontroller.value,hint: 'Enter Phone Number',label: Appicons.phone,customvalidator: Formvalidations.numbervalidation,changed: (val){
         val=_todocontroller.phonecontroller.value.text;
          },),
          SizedBox(height: Get.height/60,),
          ElevatedButton(onPressed: (){
          if(_todocontroller.formkey.currentState!.validate()){
            List<String> list = [];
            list.add(_todocontroller.emailcontroller.value.text.toString()+","+_todocontroller.phonecontroller.value.text.toString());
            _todocontroller.checkgettodolist(list: list,dataelement: _todocontroller.emailcontroller.value.text.toString()+","+_todocontroller.phonecontroller.value.text.toString());
          }
          }, child:const Text('Submit')),
          SizedBox(height: Get.height/60,),
          Obx((){
            return _todocontroller.showalredyexits.value?const Center(child: Text('Already Exists'),):const SizedBox();
          }),
          SizedBox(height: Get.height/60,),
          const Expanded(child:Todolist()),
          ],
              ),
        )),
    );
    });
  }
}