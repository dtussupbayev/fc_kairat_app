import 'package:flutter/material.dart';

import 'presentation/navigation/router.dart';
import 'presentation/themes/theme.dart';

void main() {
  runApp(const FCKairatCloneApp());
}

class FCKairatCloneApp extends StatelessWidget {
  const FCKairatCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FC Kairat Clone App',
      theme: createLightTheme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
