import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../blocs/bloc_exports.dart';
import '../models/task.dart';
=======
>>>>>>> main
import '../test_data.dart';
import '../widgets/tasks_list.dart';

class PendingTasksScreen extends StatelessWidget {
<<<<<<< HEAD
  PendingTasksScreen({Key? key}) : super(key: key);

  TextEditingController titleController = TextEditingController();

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: AddTaskScreen(titleController: titleController),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: Text(
                  '${tasksList.length} Pending | ${tasksList.length} Completed',
                ),
              ),
            ),
            const SizedBox(height: 10),
            TasksList(tasksList: tasksList),
          ],
        );
      },
    );
  }
}

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key? key,
    required this.titleController,
  }) : super(key: key);

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(children: [
        const Text(
          'Add Task',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          autofocus: true,
          controller: titleController,
          decoration: const InputDecoration(
            label: Text('Title'),
            border: OutlineInputBorder(),
          ),
        ),
      ]),
=======
  const PendingTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Chip(
              label: Text(
                '${TestData.pendingTasks.length} Pending | ${TestData.completedTasks.length} Completed',
              ),
            ),
          ),
          const SizedBox(height: 10),
          TasksList(tasksList: TestData.pendingTasks),
        ],
      ),
>>>>>>> main
    );
  }
}
