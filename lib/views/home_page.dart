// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:todo_task/controller/todocontroller.dart';
import 'package:todo_task/resoucres/widgets/createtodo.dart';

class Homescreen extends StatelessWidget {
  //const Homescreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final Todocontroller _todocontroller = Get.put(Todocontroller());
    return Scaffold(
      appBar: AppBar(title: Text('TODO',style: TextStyle(fontSize: Get.height/60),),centerTitle: true,actions: [
        // IconButton(onPressed: (){
        //   _todocontroller.showlist.value=true;
        // }, icon: Appicons.add),
      ],),
      body: Createtodo(),
      // body: Obx((){
      //   return _todocontroller.showlist.value?Padding(
      //     padding: EdgeInsets.symmetric(vertical: Get.height/60,horizontal: Get.width/60),
      //     child: Createtodo(),
      //   ):Todolist();
      // }),
    );
  }
}