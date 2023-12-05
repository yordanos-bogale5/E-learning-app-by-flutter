// main.dart
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../../../adimin_dashboard/detail_screen/instructor/add_inst.dart';
import '../../../adimin_dashboard/detail_screen/instructor/course_assi.dart';
import '../../../adimin_dashboard/detail_screen/instructor/delete.dart';
import '../../../adimin_dashboard/detail_screen/instructor/instructor_list.dart';



void main() {
  runApp(const InstructorMgt());
}

class InstructorMgt extends StatelessWidget {
  const InstructorMgt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () async {
          // Handle back button press
          print('Back button pressed');
          return true; // Return true to allow back navigation
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Instructor Management'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press
                print('Back button pressed');
                Navigator.pop(context); // Navigate back
              },
            ),
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              List<String> texts = [
                'Add Account',
                'Course Assignment',
                'Delete Account',
                'Instructor List',
                'update Account',
              ];

              return InkWell(
                onTap: () {
                  // Handle card tap
                  print('Tapped on card ${index + 1}');

                  // Navigate to the corresponding Dart file
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  const AddInstr(),
                        ),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CourseAssignment(),
                        ),
                      );
                      break;
                      
                        case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  const DeleteUser(),
                        ),
                      );
                      break;
                        case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InstructorList (),
                        ),
                      );
                      break;
                        case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InstructorList (),
                        ),
                      );
                      break;
                    default:
                      break;
                  }
                },
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        texts[index],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
