import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/widgets/widgets.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: "Add New Task"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CommonTextField(hintText: 'Title Text', title: 'Title Text'),
              const Gap(30),
              const CategoriesSelection(),
              const Gap(30),
              const SelectDateTime(),
              const Gap(30),
              const Gap(16),
              const CommonTextField(
                hintText: 'Task Note',
                title: 'Note',
                maxLines: 5,
              ),
              const Gap(60),
              ElevatedButton(
                  onPressed: () {}, child: const DisplayWhiteText(text: 'Save'))
            ],
          ),
        ),
      ),
    );
  }
}
