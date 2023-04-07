
import 'package:flutter_test_search_algolia/home_controller.dart';
import 'package:flutter_test_search_algolia/venue_firebase_provider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => VenueFirebaseProvider());
  }

}