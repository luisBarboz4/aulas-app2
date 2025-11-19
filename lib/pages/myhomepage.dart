import 'package:flutter/material.dart';
import '../widgets/myappbar.dart';
import '../widgets/myfab.dart';
import '../widgets/myelev.dart';
import '../widgets/mytxt.dart';
import '../widgets/mycontainer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Flutter - 1',
      home: Scaffold(
        appBar: const MyAppBar(),  // Mantém const, pois MyAppBar é Stateless
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MyFab(),      // Sem const, pois é Stateful
            MyElev(),     // Sem const, pois é Stateful
            MyTxt(),      // Sem const, pois é Stateful
            MyContainer(), // Sem const, pois é Stateful
          ],
        ),
      ),
    );
  }
}