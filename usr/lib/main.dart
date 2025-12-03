import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CloudAI Info',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InfoScreen(),
      },
    );
  }
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CloudAI Information'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'Welcome'),
            _buildParagraph(
              'Welcome to the CloudAI User Application. This platform is designed to provide you with concise, accurate, and real-time information directly on your device.',
            ),
            const SizedBox(height: 24),
            
            _buildSectionTitle(context, 'Key Features'),
            _buildBulletPoint(context, 'Cross-Platform Compatibility'),
            _buildBulletPoint(context, 'Real-time Data Synchronization'),
            _buildBulletPoint(context, 'Secure User Authentication'),
            _buildBulletPoint(context, 'Intuitive User Interface'),
            const SizedBox(height: 24),
            
            _buildSectionTitle(context, 'About Us'),
            _buildParagraph(
              'We are dedicated to leveraging the latest in artificial intelligence and cloud computing to deliver superior user experiences. Our mission is to simplify complex data and make it accessible to everyone.',
            ),
            const SizedBox(height: 24),
            
            _buildSectionTitle(context, 'Contact'),
            _buildParagraph(
              'For support or inquiries, please reach out to our team at support@cloudai.example.com.',
            ),
            
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Placeholder for future action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('More details coming soon!')),
                  );
                },
                child: const Text('Learn More'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        height: 1.5,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle_outline,
            size: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
