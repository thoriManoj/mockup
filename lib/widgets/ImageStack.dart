
import 'package:flutter/material.dart';
import 'package:mockup/model/model.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key key,
    @required Model item,
  })  : _item = item,
        super(key: key);

  final Model _item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            _item.imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF50F6E8),
              ),
              child: Padding(
                padding:
                const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                child: Text(
                  'Fetured',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
              )),
        ),
      ],
    );
  }
}
