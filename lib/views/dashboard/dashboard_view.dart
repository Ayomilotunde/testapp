import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testapp/constants/app_constants.dart';
import 'package:testapp/utils/app_assets.dart';
import 'package:testapp/views/dashboard/components/image_holder.dart';
import 'package:testapp/views/dashboard/components/movie_card.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  // Some Dummy Data
  List<Widget> items = [
    const ImageHolder(image: AppAssets.image_1),
    const ImageHolder(image: AppAssets.image_2),
    const ImageHolder(image: AppAssets.image_3),
    const ImageHolder(image: AppAssets.image_4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.home),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(
                items: items,
                options: CarouselOptions(
                  height: 210,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: AppConstants.searchPlaceholder,
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.grey,
                ),
                suffixIcon: GestureDetector(
                    onTap: () {
                      debugPrint(AppConstants.buttonTapped);
                    },
                    child: const Icon(Icons.send)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey.shade700)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Movies"),
                Row(
                  children: [
                    Text("View more"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return MovieCard();
                }),
          ],
        ),
      ),
    );
  }
}
