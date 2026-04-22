import 'package:flutter/material.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Supabase.initialize(url: "https://maqdmestdsiercfdpvgs.supabase.co",
anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1hcWRtZXN0ZHNpZXJjZmRwdmdzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NzYxNjMsImV4cCI6MjA4ODE1MjE2M30.4xoyB6AQYju0EBiVyeWocb3UlHB__0QchHHbN8j-v88",
);

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
colorScheme: .fromSeed(seedColor: Colors.deepPurple),
),
home: ChatPage(username: 'Led'),
);
}
}
