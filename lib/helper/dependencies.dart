import 'package:goldmine/controllers/abroad_study_controller.dart';
import 'package:goldmine/controllers/blog_controller.dart';
import 'package:goldmine/controllers/college_controller.dart';
import 'package:goldmine/controllers/services_controller.dart';
import 'package:goldmine/controllers/study_in_controllers.dart';
import 'package:goldmine/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:goldmine/data/api/api_client1.dart';
import 'package:goldmine/data/repository/abroad_study_repo.dart';
import 'package:goldmine/data/repository/blog_repo.dart';
import 'package:goldmine/data/repository/college_repo.dart';
import 'package:goldmine/data/repository/service_repo.dart';
import 'package:goldmine/data/repository/study_in_repo.dart';
import 'package:goldmine/utils/app_constants.dart';

Future<void> init() async{

  //api-client
Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
Get.lazyPut(()=>ApiClient1(appBaseUrl1: AppConstants.MAIN_URL));

//repos
Get.lazyPut(() => StudyInRepo(apiClient: Get.find()));
Get.lazyPut(() => AbroadStudyRepo(apiClient: Get.find()));
Get.lazyPut(() => BlogRepo(apiClient1: Get.find()));
Get.lazyPut(() => ServiceRepo(apiClient1: Get.find()));
Get.lazyPut(() => CollegeRepo(apiClient1: Get.find()));


//controllers
Get.lazyPut(() => StudyInController(studyInRepo: Get.find()));
Get.lazyPut(() => AbroadStudyController(abroadStudyRepo: Get.find()));
Get.lazyPut(() => BlogController(blogRepo: Get.find()));
Get.lazyPut(() => ServiceController(serviceRepo: Get.find()));
Get.lazyPut(() => CollegeController(collegeRepo: Get.find()));



}