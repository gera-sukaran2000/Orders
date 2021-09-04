import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:pendingscreen/Providers/DummyData.dart';

class Styling extends StatelessWidget {
  final DummyData singleInvoice;

  Styling(this.singleInvoice);

  @override
  Widget build(BuildContext context) {
    double getProportionateScreenHeight(double inputHeight) {
      double screenHeight = MediaQuery.of(context).size.height;
      return (inputHeight / 812.0) * screenHeight;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double screenWidth = MediaQuery.of(context).size.width;
      return (inputWidth / 375.0) * screenWidth;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: HexColor('#FFFFFF'),
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
      height: getProportionateScreenHeight(160),
      width: getProportionateScreenWidth(80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //outer row
        children: [
          Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(55),
                child: AspectRatio(
                  aspectRatio: 0.55,
                  child: Container(
                    child: Image.asset('assets/images/Phone.png'),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(5)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    singleInvoice.title,
                    style: TextStyle(color: HexColor('#000000'), fontSize: 17),
                  ),
                  Text(
                    '${singleInvoice.color} \n${singleInvoice.quantity}',
                    style: TextStyle(
                        color: HexColor(
                          '#666565',
                        ),
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                width: getProportionateScreenWidth(80),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    '\$${singleInvoice.price.toString()}',
                    style: TextStyle(color: HexColor('#000000'), fontSize: 16),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(18),
                  ),
                  Text('\$${singleInvoice.price.toString()}',
                      style:
                          TextStyle(color: HexColor('#000000'), fontSize: 16)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: getProportionateScreenWidth(62),
                height: getProportionateScreenHeight(25),
                decoration: BoxDecoration(
                    color: HexColor('#FAC8C8'),
                    borderRadius: BorderRadius.circular(12)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Pending',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: HexColor('#FF0000')),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(35),
              ),
              Text(DateFormat.yMMMMd().format(singleInvoice.date)),
            ],
          )
        ],
      ),
    );
  }
}
