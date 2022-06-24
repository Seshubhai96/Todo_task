import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Todocontroller extends GetxController{
  RxBool showlist = false.obs;
  RxBool loading = false.obs;
  RxBool showalredyexits =false.obs;
  var emailcontroller = TextEditingController().obs;
  var phonecontroller = TextEditingController().obs;
  RxList<String> todolist = [""].obs;
 final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  addtodolist({List<String>? list})async{
  loading.value=true;
  final addlis = await SharedPreferences.getInstance();
  addlis.setStringList('list',list!).then((value){
    emailcontroller.value.clear();
    phonecontroller.value.clear();
    //setlistchek(key:'checkdata',value: true);
    showlist.value=false;
    loading.value=false;
  });
  
  }
  gettodolist()async{
  final prfss = await SharedPreferences.getInstance();
 var list= prfss.getStringList('list');
  if(list==null){
   todolist.length=0;
  }
  else{
    todolist.value=list;
  }
  }
  checkgettodolist({List<String>? list,dataelement})async{
    loading.value=true;
    final listval = await SharedPreferences.getInstance();
    var listdata =  listval.getStringList('list');
    if(listdata==null){
      addtodolist(list: list);
      loading.value=false;
    }
    else{
   var isexists= listdata.where((element) => element.contains(dataelement));
   if(isexists.isNotEmpty){
     emailcontroller.value.clear();
     phonecontroller.value.clear();
     showalredyexits.value=true;
     loading.value=false;
   }
   else{
     listdata.add(dataelement);
     addtodolist(list: listdata);
   }
    }
  }

}