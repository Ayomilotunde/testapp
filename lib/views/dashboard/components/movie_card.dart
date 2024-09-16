import 'package:flutter/material.dart';
import 'package:testapp/constants/app_constants.dart';
import 'package:testapp/utils/app_assets.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(image: AssetImage(AppAssets.image_2), fit: BoxFit.cover)),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppConstants.dummyTitle,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                      child: Text(
                    AppConstants.dummySubtitle,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, overflow: TextOverflow.ellipsis),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
