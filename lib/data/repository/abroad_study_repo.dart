import 'package:get/get.dart';
import 'package:goldmine/data/api/api_client.dart';
import 'package:goldmine/utils/app_constants.dart';

class AbroadStudyRepo extends GetxService{
  final ApiClient apiClient;
  AbroadStudyRepo({required this.apiClient});


  Future<Response> getabroadStudyList()async{
    return await apiClient.getData(AppConstants.ABROAD_STUDY_URI);
  }
}