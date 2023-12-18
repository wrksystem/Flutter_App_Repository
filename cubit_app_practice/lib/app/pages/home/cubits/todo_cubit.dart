import 'package:bloc/bloc.dart';
import 'package:cubit_app_practice/app/pages/home/cubits/todo_states.dart';

class TodoCubit extends Cubit<TodoStates>{

  final List<String> _todos = [];
  List<String> get todos => _todos;

  TodoCubit() : super(InitialTodoState());

  Future<void> addTodo({required String todo}) async {
    emit(LoadingTodoState());

    await Future.delayed(const Duration(seconds: 1));

    if(_todos.contains(todo)) {
      emit(ErrorTodoState('Você ja possui essa tarefa'));
    } else {
      _todos.add(todo);
      emit(LoadedTodoState(_todos));
    }
  }

  Future<void> removeTodo({required int index}) async {
    emit(LoadingTodoState());

    await Future.delayed(const Duration(seconds: 1));

    _todos.removeAt(index);
    emit(LoadedTodoState(_todos));
  }
}