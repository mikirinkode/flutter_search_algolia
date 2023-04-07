import 'package:flutter/material.dart';
import 'package:flutter_test_search_algolia/venue_model.dart';

class VenueCard extends StatelessWidget {
  final VenueModel model;
  const VenueCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.blueGrey),
          borderRadius: BorderRadius.all(Radius.circular(16))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${model.name}"),
            Text("Type: ${model.type}"),
            Text("Rating: ${model.total_rating} (${model.total_review} reviews)"),
            Text("Price: Rp.${model.lowest_price} - Rp.${model.highest_price}"),
          ],
        ),
      ),
    );
  }
}
