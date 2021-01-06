import 'package:flutter/material.dart';
import 'package:mockup/model/model.dart';


class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
    @required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final _item = modelItem[index];
    return Container(
      //height: 500,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '\$${_item.price}',
            style: TextStyle(
                color: Color(0xFFEA929C),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            _item.title,
            softWrap: false,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            _item.type,
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              Text(_item.location),
            ],
          ),
        ],
      ),
    );
  }
}
