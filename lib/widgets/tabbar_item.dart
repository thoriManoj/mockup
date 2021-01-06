import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    Key key,
    @required this.tabIcon,
    @required this.tabTitle,
    @required this.tabColor,
  }) : super(key: key);

  final IconData tabIcon;
  final String tabTitle;
  final Color tabColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: tabColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(tabIcon,size: 18,),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          tabTitle,
          softWrap: false,
          style: TextStyle(fontSize: 10, color: Colors.black87),
        ),
      ],
    );
  }
}
