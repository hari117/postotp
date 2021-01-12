import 'package:get/get.dart';

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




  Future registerService(int srmId,String name,String department,) async {
    Map<String, dynamic> registerMap ={
      "srmid":srmId,
      "name":name,
      "role":2,
      "department":department,
      "phone":1234567890,
      "notify_token":"jbkdfj",
      "purposeofvisit":"kjbvjcbx"
    };
    var data = await post("http://srm.vgts.tech/api/usercreate",registerMap);
    var response=data.bodyString;
    print(response);
    Get.snackbar("Hi",response.toString(),snackPosition: SnackPosition.BOTTOM);
  }


}

final $apiServices=ApiServices();