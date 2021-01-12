import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/dashboard_screen.dart';
import 'package:getx/login_screen.dart';

class ApiServices extends GetConnect {
  String url = "http://srm.vgts.tech/api/userotp";



  Future requestOtpToLogin(String phoneNumber) async {
    print("called requestotptologin funtion $phoneNumber");
    Map<String, dynamic> map = {
      "phone": phoneNumber,
    };
  var d = await post(url,map);
   var responceData=d.bodyString;
   print(responceData);
   // Otp otp=otpFromJson(responceData);
   // print(otp.status);
  }




  Future registerService({String srmId,String name,String department,int token,String reason}) async {

    Map<String, dynamic> registerMap ={};

    if(token==0)
      {
         registerMap ={
          "srmid":srmId,
          "name":name,
           "role":2,
          "department":department,
          "phone":phoneNumberController.text,
           "notify_token":"jbkdfj",
          //"purposeofvisit":"kjbvjcbx"
        };
      }else if(token==1)
        {
            registerMap ={
              "srmid":srmId,
              "name":name,
               "role":2,
              "department":department,
              "phone":phoneNumberController.text,
              // "notify_token":"jbkdfj",
              //"purposeofvisit":"kjbvjcbx"
            };

        }else if(token==2)
          {
            print("enterted guest funtion ******");
            registerMap ={
              "name":name,
               "role":3,
              //"department":department,
              "phone":phoneNumberController.text,
               "notify_token":"jbkdfj",
              "purposeofvisit":"kjbvjcbx"
            };
          }
    var data = await post("http://srm.vgts.tech/api/usercreate",registerMap);
    var response=await data.bodyString;
    print(response);
    Get.to(DashBoard(response));
    //Get.snackbar("Hi",response.toString(),snackPosition: SnackPosition.BOTTOM);
  }


}

final $apiServices=ApiServices();