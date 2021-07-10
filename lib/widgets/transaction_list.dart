import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _usertransactions;

  TransactionList(this._usertransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: (_usertransactions.isEmpty)
            ? Column(
          mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "No Transactions yet!",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              )
            : Column(
                children: _usertransactions.map((tx) {
                  return Card(
                      child: Row(children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(20),
                        width: 70,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          '\$${tx.amount.toStringAsFixed(2)}',
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.red,
                            fontSize: 20,
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tx.title,
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.headline6),
                        Text(
                          DateFormat.yMMMMEEEEd().format(tx.date),
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ]));
                }).toList(),
              ),
      ),
    );
  }
}
