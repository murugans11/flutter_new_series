part of 'theme_bloc.dart';

enum AppTheme { light, dart }

class ThemeState extends Equatable{

  final AppTheme appTheme;

  @override
  List<Object> get props => [appTheme];

  @override
  String toString() {
    return 'ThemeState{appTheme: $appTheme}';
  }

  factory ThemeState.initial() {
    return const ThemeState();
  }

  const ThemeState({
     this.appTheme = AppTheme.light,
  });

  ThemeState copyWith({
    AppTheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
