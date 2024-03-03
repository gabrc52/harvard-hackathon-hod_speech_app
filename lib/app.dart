import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HOD/Ataxia Speech Helper'),
          actions: [
            IconButton(
              onPressed: () => showAboutDialog(
                  context: context,
                  applicationName: "HOD/Ataxia Speech Helper",
                  applicationLegalese:
                      "This is a sample application for the Harvard 2024 Rare Disease Hackathon, aiming to help not just HOD patients but anyone who has ataxic speech, with an emphasis and focus on hypertrophic olivary degeneration."),
              icon: const Icon(Icons.info_outline),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.record_voice_over),
                text: 'Record',
              ),
              // demo? ideally for zoom, as an input method itself, etc
              Tab(
                icon: Icon(Icons.abc),
                text: 'Transcribe',
              ),
              Tab(
                icon: Icon(Icons.library_music_rounded),
                text: 'Saved',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("The patient records what they want to say, and our tool modifies it by removing pauses between syllables and increasing the speed of the speech."),
            ),
            Center(
              child: Text("Unlike traditional text-to-speech applications, this does not use pauses to calculate when the end of a word is: it accumulates syllables until it detects the start of the next word using context, and then combines the previous syllables into a word."),
            ),
            Center(
              child: Text("The user of the app can save preset messages for frequent use. Such as “Hi my name is ___, I have a disorder called HOD which affects my movements and coordination.” or their address or phone number."),
            ),
          ],
        ),
      ),
    );
  }
}
