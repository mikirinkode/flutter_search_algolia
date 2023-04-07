import 'package:flutter/material.dart';
import 'package:flutter_test_search_algolia/home_controller.dart';
import 'package:flutter_test_search_algolia/venue_card.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Obx(() => (controller.isLoading.value)
          ? Container(
              child: Center(
                child: Text("Loading"),
              ),
            )
          : Container(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: TextField(
                      autofocus: true,
                      onChanged: (String value) {
                        // TODO
                      },
                      onSubmitted: (String value) {},
                      decoration: const InputDecoration(
                        // border: InputBorder.none,
                        // contentPadding: EdgeInsets.zero,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  (controller.venues.isEmpty)
                      ? SliverToBoxAdapter(child: Container())
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                              childCount: controller.venues.length,
                              (BuildContext context, int index) {
                                return Container(
                                  child: VenueCard(model: controller.venues[index]),
                                );
                              }),
                        )
                ],
              ),
            )),
    );
  }
}
