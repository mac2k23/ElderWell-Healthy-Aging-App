import 'package:get/get.dart';

class Controller extends GetxController{

  RxInt age = 35.obs;
  RxInt weight = 50.obs;
  RxInt height = 170.obs;
  RxString gender = 'male'.obs;
  List<RxBool> like = [
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
  ];
  List<RxBool> goal = [
    false.obs,
    false.obs,
    false.obs,
  ];

}