import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //const NewTransaction({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function(String,double) _addTransaction;

  NewTransaction(this._addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
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
                _addTransaction(titleController.text,double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
