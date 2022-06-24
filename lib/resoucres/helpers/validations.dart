import 'package:todo_task/utils/styles.dart';

class Formvalidations{
  static String? emailvalidation(String? email){
    if(email!.isEmpty){
      return AppStrings.emptyemail;
    }
    else if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9,-]+.[a-z]").hasMatch(email)){
      return AppStrings.erroremail;
    }
    else{
      return null;
    }
  }
  static String? numbervalidation(String? phone){
    if(phone!.isEmpty){
      return AppStrings.emptynumber;
    }
    else if(phone.length>10||phone.length<10){
      return AppStrings.errorphonenumber;
    }
    else{
      return null;
    }
  }
}