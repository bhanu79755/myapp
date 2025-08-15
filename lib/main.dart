import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/ai_page.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingPage(),
    ),
     GoRoute(path: '/ai', builder: (context, state) => AiPage()),
  ],
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ChatGPT Destroyer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
          ),
        ),
      ),
      routerConfig: _router,
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0000EE),
        title: Text(
          'ChatGPT Destroyer',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
        ),
      ),
 body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50), // Add some spacing below the app bar

            // Main content section - Customize this section
            Text( // You can replace this Text widget with your desired content for the landing page.
 'Welcome to ChatGPT Destroyer',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold,  fontSize: 36),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/ai');
              },
              child: const Text('Test for free'),
            ),
            const SizedBox(height: 20),
            // Add more content here
          ],
        ),
      ),
    );
  }
}
