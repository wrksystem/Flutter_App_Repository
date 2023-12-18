abstract class TodoStates {}

class InitialTodoState extends TodoStates {}

class LoadingTodoState extends TodoStates {}

class LoadedTodoState extends TodoStates {
  final List<String> todos;

  LoadedTodoState(this.todos);
}

class ErrorTodoState extends TodoStates {
  final String message;

  ErrorTodoState(this.message);
}