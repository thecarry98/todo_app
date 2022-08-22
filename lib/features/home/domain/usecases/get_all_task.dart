import '../../../../core/error/app_error.dart';
import '../entities/task_entities.dart';
import '../repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllTaskUseCase {
  final TaskRepository repository;
  GetAllTaskUseCase(this.repository);

  Future<Either<AppError, List<TaskEntities>>> call() async {
    return repository.getAllTask();
  }
}
