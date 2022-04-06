import 'package:get/get.dart';
import 'package:goldmine/data/api/api_client.dart';
import 'package:goldmine/data/api/api_client1.dart';
import 'package:goldmine/utils/app_constants.dart';

class ServiceRepo extends GetxService{
  final ApiClient1 apiClient1;
  ServiceRepo({required this.apiClient1});


  Future<Response> getserviceList()async{
    return await apiClient1.getData(AppConstants.SERVICE_URI);
  }
}