import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Place Verification App',
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Verification',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter Address',
                border: OutlineInputBorder(),
              ),
              // maxLines: 3, // Increase the number of lines for a bigger text field
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement address verification logic
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0), // Set border radius here
                ),
                padding: const EdgeInsets.all(16.0), backgroundColor: Theme.of(context).colorScheme.primary, // Change button color to a call-to-action color
              ),
              child: const Text(
                'Verify Address',
                style: TextStyle(fontSize: 18.0,color: Colors.white), // Increase button text size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
