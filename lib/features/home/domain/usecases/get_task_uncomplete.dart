import 'package:todo_app/features/home/domain/entities/task_entities.dart';

import '../../../../core/error/app_error.dart';
import '../repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

class GetTaskUncompleteUseCase {
  final TaskRepository repository;
  GetTaskUncompleteUseCase(this.repository);

  Future<Future<Either<AppError, List<TaskEntities>>>> call(
      {required String title, bool check = false}) async {
    return repository.getTaskUncomplete();
  }
}
