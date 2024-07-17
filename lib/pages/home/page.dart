import 'package:counter_test_issam/common/constants.dart';
import 'package:counter_test_issam/pages/home/controller.dart';
import 'package:counter_test_issam/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(Constants.padding),
        child: _buildHomeBody(ref),
      ),
    );
  }

  Column _buildHomeBody(WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Counter',
          style: Constants.titlePrimaryTextStyle,
        ),
        Consumer(builder: (context, ref, child) {
          return Text(
            ref.watch(counterProvider).toString(),
            style: Constants.titlePrimaryTextStyle,
          );
        }),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Constants.padding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                icon: Icons.remove,
                onPress: ref.read(counterProvider.notifier).decrement,
              ),
              CustomButton(
                icon: Icons.add,
                onPress: ref.read(counterProvider.notifier).increment,
              ),
            ],
          ),
        )
      ],
    );
  }
}
