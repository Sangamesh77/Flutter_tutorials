import 'dart:ffi';

import 'package:expenses_tracker/models/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './chart_bar.dart';

class Chart extends StatelessWidget {
  //const Chart({Key? key}) : super(key: key);
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0;

      for (int i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date.day == weekday.day &&
            recentTransactions[i].date.month == weekday.month &&
            recentTransactions[i].date.year == weekday.year) {
          totalSum += recentTransactions[i].amount;
        }
      }

      return {
        'day': DateFormat.E().format(weekday).substring(0,1),
        'amount': totalSum,
      };
    });
  }

  double get maxSpending{
    return groupedTransactionValues.fold(0.0, (max,item){
      return max + item['amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Row(
        children: groupedTransactionValues.map((tx){
          return ChartBar(tx['day'],tx['amount'],(tx['amount'] as double)/maxSpending);
        }).toList(),
      ),
    );
  }
}
