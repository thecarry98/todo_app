import 'package:todo_app/features/home/domain/entities/task_entities.dart';

import 'package:todo_app/core/error/app_error.dart';

import 'package:dartz/dartz.dart';

import 'dart:ffi';

import '../../domain/repositories/task_repository.dart';

class TaskRepositoryImpl extends TaskRepository {
  @override
  Future<Either<AppError, Void>> deleteTask(int id) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, List<TaskEntities>>> getAllTask() {
    // TODO: implement getAllTask
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, List<TaskEntities>>> getEditTask(int id) {
    // TODO: implement getEditTask
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, List<TaskEntities>>> getTaskComplete() {
    // TODO: implement getTaskComplete
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, List<TaskEntities>>> getTaskUncomplete() {
    // TODO: implement getTaskUncomplete
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, TaskEntities>> addTask(TaskEntities task) {
    // TODO: implement addTask
    throw UnimplementedError();
  }
}
