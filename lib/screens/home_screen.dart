import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Aug 12,2024',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'My Todo List',
                      fontSize: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 170,
              right: 0,
              left: 0,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListTask(
                      tasks: [
                        Task(
                          title: 'Hospital', 
                          date: 'Aug 13,2024', 
                          isCompleted: false, 
                          note: '', 
                          time: '10:12',
                          category: TasksCategories.shopping
                          ),
                          Task(
                          title: 'going to office', 
                          date: 'Aug 13,2024', 
                          isCompleted: false, 
                          note: 'note', 
                          time: '10:12',
                          category: TasksCategories.education
                          ),
                          ], 
                      ),
                    
                    const Gap(20),
                    Text(
                      'Completed Task',
                      style: context.textTheme.headlineMedium,
                    ),
                   const DisplayListTask(
                      tasks: [
                        Task(
                          title: 'title 1', 
                          date: 'Aug 13,2024', 
                          isCompleted: true, 
                          note: 'note', 
                          time: '10:12',
                          category: TasksCategories.personal
                          ),
                          Task(
                          title: 'going to office', 
                          date: 'Aug 13,2024', 
                          isCompleted: true, 
                          note: 'note', 
                          time: '10:12',
                          category: TasksCategories.work
                          ),
                      ], 
                      isCompletedTasks: true,
                      ),
                    const Gap(20),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DisplayWhiteText(text: 'Add New Task'),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
