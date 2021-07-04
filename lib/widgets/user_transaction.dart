import './transaction_list.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import '../models/Transaction.dart';

class UserTransactions extends StatefulWidget {
  //const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _usertransactions = [
    Transaction(
      id: 't1',
      title: 'Transaction 1',
      amount: 123.45,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Transaction 2',
      amount: 123.45,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Transaction 3',
      amount: 123.45,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _usertransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_usertransactions),
      ],
    );
  }
}
