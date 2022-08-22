import '../../../../core/error/app_error.dart';
import '../entities/task_entities.dart';
import '../repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteTaskUseCase {
  final TaskRepository repository;
  DeleteTaskUseCase(this.repository);

  Future<Either<AppError, TaskEntities>> call({required int id}) async {
    return repository.deleteTask(id: id);
  }
}
