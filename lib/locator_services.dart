



import 'package:get/get_core/src/get_main.dart';
import 'package:getx/api_services.dart';
import 'package:get/get.dart';

setUp()
async{
   await Get.put<ApiServices>(ApiServices());

}