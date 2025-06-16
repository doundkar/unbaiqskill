import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference users = FirebaseFirestore.instance.collection(
    'users',
  );

  // Add user
  Future<void> addUser(String name, String city) async {
    await users.add({'name': name, 'city': city});
  }

  // Delete user
  Future<void> deleteUser(String docId) async {
    await users.doc(docId).delete();
  }

  // Stream users
  Stream<QuerySnapshot> getUsers() {
    return users.snapshots();
  }
}
