import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_task/controller/todocontroller.dart';
import 'package:todo_task/utils/styles.dart';

class Todolist extends StatelessWidget {
  const Todolist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Todocontroller _tododcontroller = Get.find<Todocontroller>();
    _tododcontroller.gettodolist();
    return Container(
      decoration: BoxDecoration(border: Border.all(color:Styles.blackcol),borderRadius: BorderRadius.circular(Get.height/50)),
      child: Obx((){
        return _tododcontroller.todolist.isEmpty?const Center(child: Text('No data'),):ListView.builder(itemCount: _tododcontroller.todolist.length,itemBuilder: (_,i){
          return ListTile(
            title: Text(i.toString()),
            subtitle: Text('email :'" "+_tododcontroller.todolist[i].toString().split(",")[0]),
            trailing: Text('Phone :'" "+_tododcontroller.todolist[i].toString().split(",")[1]),
          );
        });
      }),
    );
  }
}