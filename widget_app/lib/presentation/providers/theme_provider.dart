import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widget_app/config/theme/app_theme.dart';


// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);


//boolean
final isDarkProvider = StateProvider<bool>((ref) => false);

//int
final selectedColorProvider = StateProvider<int>((ref) => 2);