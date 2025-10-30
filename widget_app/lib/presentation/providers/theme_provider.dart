import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widget_app/config/theme/app_theme.dart';


// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);


//boolean
final isDarkProvider = StateProvider<bool>((ref) => false);

//int
final selectedColorProvider = StateProvider<int>((ref) => 2);

//Un objeto de tipo AppTheme(custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier())
  ;

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {

  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWithDarkMode( !state.isDarkMode);
  }

  void changeColorIndex (int colorIndex){
    state = state.copyWithSelectedColor(colorIndex);
  }

}