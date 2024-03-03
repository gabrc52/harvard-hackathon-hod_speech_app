import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOD/Ataxia Speech Helper'),
        actions: [
          IconButton(
            onPressed: () => showAboutDialog(
                context: context,
                applicationName: "HOD/Ataxia Speech Helper",
                applicationLegalese:
                    "This is a sample application for the Harvard 2024 Rare Disease Hackathon, aiming to help not just HOD patients but anyone who has ataxic speech."),
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
