import 'package:equatable/equatable.dart';

class TaskEntities extends Equatable {
  bool? check;
  String? title;

  // static var obs;

  TaskEntities({this.check, this.title});

  @override
  // TODO: implement props
  List<Object?> get props => [check, title];
}
