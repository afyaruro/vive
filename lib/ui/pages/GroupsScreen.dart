import 'package:flutter/material.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          const Text(
            "Tus Grupos",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: const Icon(Icons.group, color: Colors.white),
              ),
              title: const Text(
                'Grupo 1',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Último mensaje del grupo 1'),
              trailing: const Icon(Icons.message_outlined),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: const Icon(Icons.group, color: Colors.white),
              ),
              title: const Text(
                'Grupo 2',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Último mensaje del grupo 2'),
              trailing: const Icon(Icons.message_outlined),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: const Icon(Icons.group, color: Colors.white),
              ),
              title: const Text(
                'Grupo 3',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Último mensaje del grupo 3'),
              trailing: const Icon(Icons.message_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
