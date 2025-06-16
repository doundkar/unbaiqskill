import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unbaiqskillapp/services/todo_service.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoService = TodoService();
  final _controller = TextEditingController();

  void _addTodo() {
    if (_controller.text.trim().isNotEmpty) {
      _todoService.addTodo(_controller.text.trim());
      _controller.clear();
    }
  }

  void _logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todos'),
        actions: [
          IconButton(icon: const Icon(Icons.logout), onPressed: _logout),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: 'Add a todo'),
                  ),
                ),
                IconButton(icon: const Icon(Icons.add), onPressed: _addTodo),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _todoService.getTodos(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Error loading todos');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final todos = snapshot.data!.docs;

                  if (todos.isEmpty) {
                    return const Center(child: Text('No todos yet.'));
                  }

                  return ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      final data = todos[index].data() as Map<String, dynamic>;
                      final id = todos[index].id;
                      final isDone = data['isDone'] as bool;

                      return ListTile(
                        leading: Checkbox(
                          value: isDone,
                          onChanged: (value) {
                            _todoService.toggleTodo(id, value!);
                          },
                        ),
                        title: Text(
                          data['title'] ?? '',
                          style: TextStyle(
                            decoration:
                                isDone
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _todoService.deleteTodo(id),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
