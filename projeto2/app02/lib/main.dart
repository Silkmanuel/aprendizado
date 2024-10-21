import 'package:app02/Views/telainicial.dart';
import 'package:app02/controllers/visualizadas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Visualizadas()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela do Whatsapp',
      home: ChangeNotifierProvider(
        create: (_) => Visualizadas(),
        child: const TelaInicial(),
      ),
    );
  }
}
