import 'package:app01/controller/inc_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provaider - 10 minutos'),
      ),
      body: Center(
        child: Consumer<IncController>(
          builder: (context, value, child) {
            return Text(value.number.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<IncController>(context, listen: false).incNumber();
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
