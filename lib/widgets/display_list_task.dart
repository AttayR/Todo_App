import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/common_container.dart';

class DisplayListTask extends StatelessWidget {
  const DisplayListTask(
      {
        super.key, 
        required this.tasks,  
        this.isCompletedTasks = false,

      });
  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTaskMessage = isCompletedTasks ? 'There is no completed task yet' : 'There is no task todo';
    return CommonContainer(
      height: height,
      child: tasks.isEmpty ? Center(
        child: Text(emptyTaskMessage,style: context.textTheme.headlineSmall,),
      ):
      
      
      ListView.builder(
          shrinkWrap: true,
          itemCount: 8,
          padding: EdgeInsets.zero,
          itemBuilder: (ctx, index) {
            return const Text('Home');
          }),
    );
  }
}
