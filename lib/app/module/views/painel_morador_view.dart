import 'package:app_coleta_seletiva/app/module/views/grid_view_morador.dart';
import 'package:flutter/material.dart';

class PainelMoradorView extends StatefulWidget {
  const PainelMoradorView({Key? key}) : super(key: key);

  @override
  State<PainelMoradorView> createState() => _PainelMoradorViewState();
}

class _PainelMoradorViewState extends State<PainelMoradorView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenMorador(),
    );
  }
}
