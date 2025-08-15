import 'package:flutter/material.dart';

class AiPage extends StatelessWidget {
  const AiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your question here...',
                border: OutlineInputBorder(),
              ),
              maxLines: null, // Allows for multiline input
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement AI interaction logic here
              },
              child: const Text('Ask AI'),
            ),
          ],
        ),
      ),
    );
  }
}