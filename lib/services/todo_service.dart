import 'package:cloud_firestore/cloud_firestore.dart';

class TodoService {
  final CollectionReference todos = FirebaseFirestore.instance.collection('todos');

  Future<void> addTodo(String title) async {
    await todos.add({
      'title': title,
      'isDone': false,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteTodo(String id) async {
    await todos.doc(id).delete();
  }

  Future<void> toggleTodo(String id, bool isDone) async {
    await todos.doc(id).update({'isDone': isDone});
  }

  Stream<QuerySnapshot> getTodos() {
    return todos.orderBy('createdAt', descending: true).snapshots();
  }
}
