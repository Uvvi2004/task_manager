import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/task.dart';

class TaskService {
  final CollectionReference tasks =
      FirebaseFirestore.instance.collection('tasks');

  // CREATE
  Future<void> addTask(String title) async {
    await tasks.add({
      'title': title,
      'isCompleted': false,
      'subtasks': [],
      'createdAt': DateTime.now().toIso8601String(),
    });
  }

  // READ (STREAM)
  Stream<List<Task>> streamTasks() {
    return tasks.orderBy('createdAt').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Task.fromMap(
          doc.id,
          doc.data() as Map<String, dynamic>,
        );
      }).toList();
    });
  }

  // UPDATE
  Future<void> toggleTask(Task task) async {
    await tasks.doc(task.id).update({
      'isCompleted': !task.isCompleted,
    });
  }

  // DELETE
  Future<void> deleteTask(String id) async {
    await tasks.doc(id).delete();
  }
}