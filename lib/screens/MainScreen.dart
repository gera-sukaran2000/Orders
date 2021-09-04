import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pendingscreen/screens/All.dart';

class MainTabScreen extends StatefulWidget {
  @override
  _MainTabScreenState createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor('#ECECEC')),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: 'Search Order',
                  hintStyle: TextStyle(color: HexColor('#666565')),
                  prefixIcon: Icon(
                    Icons.search,
                    color: HexColor('#666565'),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            ),
          ),
          bottom: TabBar(
              indicatorColor: HexColor('#2ECC71'),
              unselectedLabelColor: HexColor('#656565'),
              labelColor: HexColor('#000000'),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'All',
                  ),
                ),
                Tab(
                  child: Text(
                    'Pending',
                  ),
                ),
                Tab(
                  child: Text('Shipped'),
                ),
                Tab(
                  child: Text('Delivered'),
                ),
              ]),
        ),
        body: TabBarView(children: [All(), All(), All(), All()]),
      ),
    );
  }
}
