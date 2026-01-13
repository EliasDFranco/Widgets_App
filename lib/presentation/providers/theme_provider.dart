import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Estado => isDarkThemeProvider = boolean
final isDarkThemeProvider = StateProvider((ref) => false);

// List of inmutable colors
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (custom)

// Controller o Notifier | Creando una instancia de AppTheme
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = Estado = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
  state = state.copyWith(isDarkTheme: !state.isDarkTheme);
}

void changeColorIndex(int colorIndex) {}
}





/*

Usa Provider (de Riverpod) para dependencias inmutables (repositorios, servicios) que no cambian,
como un \(APIClient\) o un \(Logger\).
Mientras que StateProvider es para estados simples y mutables (un número, un texto) que necesitan actualizarse en la UI,
siendo ideal para contadores o el estado de un toggle, y para estados más complejos y lógicos,
StateNotifierProvider con un StateNotifier es la opción recomendada. 

Cuándo usar Provider (Riverpod)
- Dependencias Inmutables: Cuando necesitas exponer un objeto que no cambia su estado interno, como un servicio de autenticación, una clase de acceso a datos o un configurador.
- Inyección de Dependencias: Para inyectar servicios en tu aplicación de forma centralizada.
- Estado de Solo Lectura: Si el dato que proporcionas solo se lee y no se modifica directamente desde el proveedor.

Ejemplo de código: 
  final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});


Cuándo usar StateProvider (Riverpod)
- Estados Simples: Para estados primitivos o sencillos que cambian con el tiempo y necesitan ser observados por la UI, como un bool, int, String.
- Reconstrucciones Simples: Cuando la lógica de actualización del estado es mínima y no necesita una clase dedicada (como un StateNotifier).
- Ejemplos: El valor de un Checkbox, el texto de un TextField, el estado de carga de un botón.  

Ejemplo de código:
final counterProvider = StateProvider<int>((ref) {
  return 0;
});

*/