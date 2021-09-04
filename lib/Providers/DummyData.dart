import 'package:flutter/material.dart';

class DummyData {
  final String id;
  final String title;
  final DateTime date;
  final String color;
  final int price;
  final int quantity;
  final bool status = false;

  DummyData(
      {@required this.color,
      @required this.date,
      @required this.id,
      @required this.price,
      @required this.quantity,
      @required this.title});
}

class DummyDataList with ChangeNotifier {
  List<DummyData> _myInvoice = [
    DummyData(
        date: DateTime.now(),
        id: '1',
        price: 999,
        quantity: 1,
        color: 'Red',
        title: 'Apple iphone 12'),
    DummyData(
        date: DateTime.now(),
        id: '1',
        price: 999,
        quantity: 1,
        color: 'Red',
        title: 'Apple iphone 12'),
  ];

  List<DummyData> get Invoices {
    return [..._myInvoice];
  }
}
