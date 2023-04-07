
import 'package:flutter_test_search_algolia/venue_firebase_provider.dart';
import 'package:flutter_test_search_algolia/venue_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final venues = <VenueModel>[].obs;
  final isLoading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
      print("home controller on init");
      print("home controller on init");
      print("home controller on init");
      print("home controller on init");
      print("home controller on init");

    Get.find<VenueFirebaseProvider>().getVenues().then((value) {
      print("venue length: ${value.length}");
      print("venue length: ${value.length}");
      print("venue length: ${value.length}");
      print("venue length: ${value.length}");
      print("venue length: ${value.length}");
      print("venue length: ${value.length}");
      venues.assignAll(value);
      isLoading(false);
    });
  }

}