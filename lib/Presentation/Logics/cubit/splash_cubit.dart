import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
  Future<void> startTimer() async {
    await Future.delayed(const Duration(seconds: 9));
    emit(ReadyToStartState());
  }
}
