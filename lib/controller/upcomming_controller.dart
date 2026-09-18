import 'package:codeit/model/upcomming_model.dart';
import 'package:codeit/service/upcoming_service.dart';
import 'package:get/get.dart';

class UpcommingController extends GetxController {
  var upcoming= UpcommingClassModel(sucess: false, data: []).obs;
  var isLoading =false.obs;


  Future getUpcommingClasses() async{
try{
isLoading(true);
var response= await UpcomingService.fetchUpcommingClasses();
if(response.statusCode ==200){
  upcoming.value=UpcommingClassModel.fromJson(response.data);
}

}finally{
isLoading(false);
}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUpcommingClasses();
  }
}