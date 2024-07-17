import 'package:counter_test_issam/common/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(Constants.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: Constants.titlePrimaryTextStyle,
            ),
            Text(
              '0',
              style: Constants.titlePrimaryTextStyle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.padding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Icon(Icons.remove),
                    onPressed: () {
                      print('decrement');
                    },
                  ),
                  ElevatedButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      print('increment');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
