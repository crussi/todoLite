import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolite/data/source/module.dart';

//import './todos_impl.dart';
import 'todos_repo.dart';
import '../../domain/repository/todos.dart';

// final todosProvider = Provider<TodosRepository>((ref) {
//   return TodoFileRepo(ref.read(filesProvider));
// });

final todosProvider = Provider<TodosRepository>((ref) {
  return TodosRepo(ref.read(filesProvider));
});
