import 'dart:ffi';

import '../../../../core/error/app_error.dart';
import '../entities/task_entities.dart';
import 'package:dartz/dartz.dart';

abstract class TaskRepository {
  Future<Either<AppError, List<TaskEntities>>> getAllTask();
  Future<Either<AppError, List<TaskEntities>>> getTaskComplete();
  Future<Either<AppError, List<TaskEntities>>> getTaskUncomplete();
  Future<Either<AppError, TaskEntities>> getEditTask(
      {required int id, required String title, required bool check});
  Future<Either<AppError, TaskEntities>> addTask(
      {required String title, required bool check});

  Future<Either<AppError, TaskEntities>> deleteTask({required int id});
}
