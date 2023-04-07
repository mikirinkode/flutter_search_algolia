import 'package:cloud_firestore/cloud_firestore.dart';

class VenueModel {
  final int highest_price;
  final String id_venue;
  final int lowest_price;
  final String name;
  final String total_rating;
  final int total_review;
  final String type;

  VenueModel(
      {required this.highest_price,
      required this.id_venue,
      required this.lowest_price,
      required this.name,
      required this.total_rating,
      required this.total_review,
      required this.type});

  static VenueModel fromFireStore(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    return VenueModel(
        highest_price: data?["highest_price"],
      id_venue: data?["id_venue"],
      lowest_price: data?["lowest_price"],
      name: data?["name"],
      total_rating: data?["total_rating"],
      total_review: data?["total_review"],
      type: data?["type"]
    );
  }
}
