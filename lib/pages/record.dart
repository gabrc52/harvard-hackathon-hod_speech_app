import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:record/record.dart';

/// TODO: ensure permissions, this is a prototype

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  bool isRecording = false;
  AudioRecorder recorder = AudioRecorder(); // TODO dispose
  Stream<Uint8List>? stream;

  void startRecording() async {
    print("startRecording called");
    if (await recorder.hasPermission()) {
      // Start recording to file
      // await record.start(const RecordConfig(), path: 'aFullPath/myFile.m4a');
      // ... or to stream
      stream = await recorder.startStream(const RecordConfig());
      setState(() {
        isRecording = true;
      });
    }
  }

  void stopRecording() async {
    await recorder.stop();
    setState(() {
      isRecording = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('$stream'),
        if (isRecording)
        // TODO pause, rewind etc
          Expanded(
            child: ElevatedButton(
              onPressed: stopRecording,
              child: const Text('STOP recording', style: TextStyle(fontSize: 30)),
            ),
          )
        else
          Expanded(
            child: ElevatedButton(
              onPressed: startRecording,
              child: const Text('START recording', style: TextStyle(fontSize: 30)),
            ),
          ),
        Expanded(
          child: ElevatedButton(
            child: const Text('Play back', style: TextStyle(fontSize: 30)),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }
}
