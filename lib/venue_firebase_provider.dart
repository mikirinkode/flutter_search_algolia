import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test_search_algolia/venue_model.dart';

class VenueFirebaseProvider {
  Future<List<VenueModel>> getVenues() async {
    final db = FirebaseFirestore.instance;

    final List<VenueModel> list = [];

    try {
      final ref = await db.collection("venue").get();

      print("Firebase ref: $ref");
      print("Firebase docs: ${ref.docs}");
      print("Firebase docs: ${ref.docs.toString()}");
      print("Firebase docs: ${ref.docs.toList().toString()}");
      print("Firebase docs length: ${ref.docs.length}");

      for (var doc in ref.docs) {
        print("Firebase doc: ${doc}");
        print("Firebase doc data: ${doc.data()}");
        var venue = VenueModel.fromFireStore(doc);
        print("Firebase generated venue: ${venue}");
        list.add(venue);
      }
    } catch (e) {
      print("Firebase error: $e");
    }

    return list;
  }
}
