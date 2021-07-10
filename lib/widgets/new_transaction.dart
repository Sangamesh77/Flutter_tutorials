import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  //const NewTransaction({Key? key}) : super(key: key);
  //converted to stateful widget, to register keystrokes
  final Function(String,double) _addTransaction;

  NewTransaction(this._addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                //onChanged: (val) => InputTitle = val,
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                // onChanged: (val) => InputAmount = val,
                controller: amountController,
              ),
              ElevatedButton(
                child: Text('Add Transaction'),
                onPressed: () {
                  //note that the widget keyword is used to reference content from the widget class
                  widget._addTransaction(titleController.text,double.parse(amountController.text));
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
