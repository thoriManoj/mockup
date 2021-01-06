import 'package:flutter/material.dart';
import 'package:mockup/model/model.dart';

import 'ImageStack.dart';
import 'corousel.dart';

class RealEstateCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.6;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            childAspectRatio: itemWidth / itemHeight,

          ),
          itemCount: modelItem.length,
          itemBuilder: (context, index) {
            return Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                  child: ImageStack(
                    item: modelItem[index],
                  ),
                  footer: Carousel(
                    index: index,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
