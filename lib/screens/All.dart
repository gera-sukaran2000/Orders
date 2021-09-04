import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pendingscreen/Providers/DummyData.dart';
import 'package:pendingscreen/widget/Invoice.dart';
import 'package:provider/provider.dart';

class All extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => DummyDataList(),
      child: Container(
        color: HexColor('#E4E4E4'),
        child: Invoice(),
      ),
    );
  }
}
