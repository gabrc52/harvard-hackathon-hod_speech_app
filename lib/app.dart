import 'package:flutter/material.dart';
import 'package:hod_speech_app/pages/record.dart';
import 'package:hod_speech_app/pages/saved.dart';
import 'package:hod_speech_app/pages/transcribe.dart';

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
            RecordPage(),
            TranscribePage(),
            SavedPage(),
          ],
        ),
      ),
    );
  }
}
