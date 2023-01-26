import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
/*   const NewTransaction({Key key}) : super(key: key);
 */

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Titulo',
                ),
                controller: titleController,
                /*  onChanged: (value) {
                  titleInput = value;
                }, */
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Cantidad',
                ),
                controller: amountController,

                /*  onChanged: (value) {
                  amountInput = value;
                }, */
              ),
              TextButton(
                  child: Text('Agregar transacción'),
                  onPressed: () {
                    addTransaction(
                      titleController.text,
                      double.parse(amountController.text),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.green,
                  ))
            ]),
      ),
    );
  }
}
