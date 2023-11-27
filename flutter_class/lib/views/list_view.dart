import 'package:flutter/material.dart';

import '../model/student.dart';
import 'output_screen.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  final _formKey = GlobalKey<FormState>();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  String? city;

  final items = [
    const DropdownMenuItem(
      value: 'Kathmandu',
      child: Text('Kathmandu'),
    ),
    const DropdownMenuItem(
      value: 'Pokhara',
      child: Text('Pokhara'),
    ),
    const DropdownMenuItem(
      value: 'Chitwan',
      child: Text('Chitwan'),
    ),
  ];

  final _gap = const SizedBox(height: 8);
  List<Student> lstStudents = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: fnameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                ),
                _gap,
                TextFormField(
                  controller: lnameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                ),
                _gap,
                DropdownButtonFormField(
                  icon: const Icon(Icons.arrow_downward),
                  items: items,
                  onChanged: (value) {
                    setState(() {
                      city = value;
                    });
                  },
                  hint: const Text('Select City'),
                  decoration: const InputDecoration(
                    labelText: 'Select City',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select city';
                    }
                    return null;
                  },
                ),
                _gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate() && city != null) {
                        Student student = Student(
                          fname: fnameController.text,
                          lname: lnameController.text,
                          city: city!,
                        );

                        setState(() {
                          lstStudents.add(student);
                        });
                      }
                    },
                    child: const Text('Add Student'),
                  ),
                ),
                _gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OutputView(lstStudents: lstStudents),
                        ),
                      );
                    },
                    child: const Text('View Students'),
                  ),
                ),
                Expanded(
                  child: lstStudents.isNotEmpty
                      ? ListView.builder(
                          itemCount: lstStudents.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(Icons.person),
                              title: Text(
                                '${lstStudents[index].fname} ${lstStudents[index].lname}',
                              ),
                              subtitle: Text(lstStudents[index].city),
                              trailing: Wrap(
                                spacing: 12,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        lstStudents.removeAt(index);
                                      });
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        lstStudents.removeAt(index);
                                      });
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                ],
                              ),
                              onTap: () {},
                            );
                          },
                        )
                      : const Text('No data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
