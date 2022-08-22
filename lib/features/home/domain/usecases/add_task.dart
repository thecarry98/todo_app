import 'package:todo_app/features/home/domain/entities/task_entities.dart';

import '../../../../core/error/app_error.dart';
import '../repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

class AddTaskUseCase {
  final TaskRepository repository;
  AddTaskUseCase(this.repository);

  Future<Either<AppError, TaskEntities>> call(
      {required String title, bool check = false}) async {
    return repository.addTask(title: title, check: check);
  }
}
