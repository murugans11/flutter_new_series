import 'package:bloc/bloc.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {

  ThemeCubit() : super(ThemeState.initial());

  void ChangeTheme(int randamInt) {
    if (randamInt % 2 == 0) {
      emit(const ThemeState(appTheme: AppTheme.dart));
    } else {
      emit(const ThemeState(appTheme: AppTheme.light));
    }
  }
}
