import 'package:flutter/material.dart';
import 'package:mockup/widgets/real_estate_carousel.dart';
import 'package:mockup/widgets/tabbar_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.all(0),

            tabs: [
              TabBarItem(
                tabIcon: Icons.home_rounded,
                tabTitle: 'Real-Estate',
                tabColor: Color(0xFFF94F5D),
              ),
              TabBarItem(
                tabIcon: Icons.directions_car,
                tabTitle: 'cars',
                tabColor: Color(0xFF0F88F6),
              ),
              TabBarItem(
                tabIcon: Icons.monitor,
                tabTitle: 'Electronics',
                tabColor: Color(0xFF45DAC1),
              ),
              TabBarItem(
                tabIcon: Icons.smartphone,
                tabTitle: 'Mobiles',
                tabColor: Color(0xFF9F61F4),
              ),
              TabBarItem(
                tabIcon: Icons.menu,
                tabTitle: 'More',
                tabColor: Color(0xFFF2C589),
              ),
            ],
          ),

        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RealEstateCarousel(),
            ),
            Icon(Icons.directions_car),
            Icon(Icons.monitor),
            Icon(Icons.smartphone),
            Icon(Icons.menu_rounded),
          ],
        ),
      ),
    );
  }
}
