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
}

final $apiServices=ApiServices();