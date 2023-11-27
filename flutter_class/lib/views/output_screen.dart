import 'package:flutter/material.dart';

import '../model/student.dart';

class OutputView extends StatelessWidget {
  final List<Student> lstStudents;
  const OutputView({Key? key, required this.lstStudents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: ListView.builder(
        itemCount: lstStudents.length,
        itemBuilder: (context, index) {
          return ListTile(
            title:
                Text('${lstStudents[index].fname} ${lstStudents[index].lname}'),
            subtitle: Text(lstStudents[index].city),
          );
        },
      ),
    );
  }
}
