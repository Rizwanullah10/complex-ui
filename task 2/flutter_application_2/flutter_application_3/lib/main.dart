import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student List'),
        ),
        body: StudentListView(),
      ),
    );
  }
}

class StudentListView extends StatelessWidget {
  final List<Map<String, dynamic>> students = [
    {'name': 'Rizwan', 'grade': 'A', 'id': '412761'},
    {'name': 'Khan', 'grade': 'B+', 'id': '412762'},
    {'name': 'Zainab Hassan', 'grade': 'A', 'id': '412763'},
    {'name': 'Raza', 'grade': 'B', 'id': '412764'},
    {'name': 'Malik', 'grade': 'A+', 'id': '412765'},
    {'name': 'Mohammad Usman', 'grade': 'B', 'id': '412766'},
    {'name': 'Sana Iqbal', 'grade': 'A', 'id': '412767'},
    {'name': 'Ahmed Farooq', 'grade': 'C+', 'id': '412768'},
    {'name': 'Ali', 'grade': 'A', 'id': '412769'},
    {'name': 'Bilal Shah', 'grade': 'B+', 'id': '412770'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: students.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(
                students[index]['name'][0],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.green.shade700,
            ),
            title: Text(
              students[index]['name'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.green.shade800,
              ),
            ),
            subtitle: Text('Grade: ${students[index]['grade']}'),
            trailing: Text(
              students[index]['id'],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.green.shade600,
              ),
            ),
            onTap: () {
              // Handle tap if needed
              print('${students[index]['name']} tapped.');
            },
          ),
        );
      },
    );
  }
}
