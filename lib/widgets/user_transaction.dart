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


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //NewTransaction(_addTransaction),
      ],
    );
  }
}
