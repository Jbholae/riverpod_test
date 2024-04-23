import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hard Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(riverpodHardLevel).counter.toString()),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodHardLevel).addCounter();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodHardLevel).removeCounter();
              },
              icon: const Icon(Icons.remove),
              label: const Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }
}
