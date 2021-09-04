import 'package:flutter/material.dart';
import 'package:pendingscreen/Providers/DummyData.dart';
import 'package:pendingscreen/widget/SingleInvoiceStyle.dart';
import 'package:provider/provider.dart';

class Invoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final invoiceList = Provider.of<DummyDataList>(context).Invoices;

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return Styling(invoiceList[index]);
            },
            itemCount: invoiceList.length,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 15),
          ),
        ),
      ],
    );
  }
}
