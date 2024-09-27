import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wecare/screens/request-blood.dart';

class BloodBank extends StatelessWidget {
   BloodBank({super.key});

  final List<Map<String, String>> names = [
    {'name': 'John Doe', 'blood group': 'A+'},
    {'name': 'Jane Smith', 'blood group': 'B-'},
    {'name': 'Michael Johnson', 'blood group': 'O+'},
    {'name': 'Emily Williams', 'blood group': 'AB-'},
    {'name': 'William Brown', 'blood group': 'A-'},
    {'name': 'Hannah Davis', 'blood group': 'B+'},
    {'name': 'James Miller', 'blood group': 'O-'},
    {'name': 'Sarah Taylor', 'blood group': 'AB+'},
    {'name': 'Robert Wilson', 'blood group': 'A+'},
    {'name': 'Jessica Anderson', 'blood group': 'B-'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blood Bank'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: names.length, // Using the length of the names list
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]['name'].toString()), // Using the name from the list
              subtitle: Text(names[index]['blood group'].toString()), // Using the blood group from the list
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle donate button press
                },
                child: const Text('Donate', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent, // Background color
                  // shape: CircleBorder(),
                  padding: const EdgeInsets.all(15), // Padding between icon and circle
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Get.off(()=> RequestBlood()),
        label: Text('Request'),
        icon: Icon(Icons.water_drop),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}