import '../../../../core/error/app_error.dart';
import '../entities/task_entities.dart';
import 'package:dartz/dartz.dart';

import '../repositories/task_repository.dart';

class EditTaskUseCase {
  // final TaskEntities task;
  final TaskRepository repository;
  EditTaskUseCase(this.repository);

  Future<Future<Either<AppError, TaskEntities>>> call(
      {required int id, required bool check, required String title}) async {
    return repository.getEditTask(id: id, title: title, check: check);
  }
}
