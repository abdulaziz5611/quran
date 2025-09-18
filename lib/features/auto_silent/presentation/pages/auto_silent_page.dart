import 'package:flutter/material.dart';

class AutoSilentPage extends StatefulWidget {
  const AutoSilentPage({super.key});

  @override
  State<AutoSilentPage> createState() => _AutoSilentPageState();
}

class _AutoSilentPageState extends State<AutoSilentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Auto Silent Page')),
    );
  }
}
