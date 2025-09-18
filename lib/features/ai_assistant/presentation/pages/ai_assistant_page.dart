import 'package:flutter/material.dart';

class AiAssistantPage extends StatefulWidget {
  const AiAssistantPage({super.key});

  @override
  State<AiAssistantPage> createState() => _AiAssistantPageState();
}

class _AiAssistantPageState extends State<AiAssistantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('AI Assistant Page')),
    );
  }
}
