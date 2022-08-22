import 'dart:ffi';

import '../../../../core/error/app_error.dart';
import '../entities/task_entities.dart';
import 'package:dartz/dartz.dart';

abstract class TaskRepository {
  Future<Either<AppError, List<TaskEntities>>> getAllTask();
  Future<Either<AppError, List<TaskEntities>>> getTaskComplete();
  Future<Either<AppError, List<TaskEntities>>> getTaskUncomplete();
  Future<Either<AppError, List<TaskEntities>>> getEditTask(int id);
  Future<Either<AppError, TaskEntities>> addTask(TaskEntities task);

  Future<Either<AppError, Void>> deleteTask(int id);
}
