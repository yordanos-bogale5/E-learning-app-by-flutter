import 'package:flutter/material.dart';

void main() {
  runApp(const InstFive());
}

class InstFive extends StatelessWidget {
  const InstFive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teacher Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InstFiveDetailsPage(
        teacherName: 'Sarah Johnsoon',
        teacherTitle: 'Professor of Business Administration',
        teacherDescription:
            'Develops and designs curriculum plans to foster student learning, stimulate class discussions, and ensures student engagement.',
        imagePath: 'assets/teacher.jpg',
      ),
    );
  }
}

class InstFiveDetailsPage extends StatelessWidget {
  final String teacherName;
  final String teacherTitle;
  final String teacherDescription;
  final String imagePath;

  const InstFiveDetailsPage({super.key,
    required this.teacherName,
    required this.teacherTitle,
    required this.teacherDescription,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 550,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    teacherName,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    teacherTitle,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    teacherDescription,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}