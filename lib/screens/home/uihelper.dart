// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField (TextEditingController controller,String text , IconData iconData, bool toHide ){
return TextField(
  controller: controller,
  obscureText: toHide,
  decoration: InputDecoration(
    hintText: text,
    suffixIcon: Icon(iconData),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)
    ),
    
    ),

  );

  }
  static CustomButton ( VoidCallback voidCallback , String text){
    return SizedBox(height: 50 ,width :200,
    child: ElevatedButton(onPressed: (){
                voidCallback();
              },
              child: Text (text ,style: const TextStyle(
              color:Color.fromARGB(255, 130, 116, 200), fontSize: 20 ,
                )
          ),
    
    ), );
  }


}