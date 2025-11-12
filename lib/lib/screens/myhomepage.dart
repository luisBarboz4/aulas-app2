import 'package:aula6/model/profile.dart';
import 'package:aula6/widgets/mycard.dart';
import 'package:aula6/widgets/mydrawer.dart';
import 'package:aula6/widgets/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   //Criando lista de dados
 final List<Profile> listaDados = [
    Profile(name: "Alice", image: "",like: true),
    Profile(name: "Bernardo", image: "",like: false),
    Profile(name: "Carlos", image: "",like: true),
    Profile(name: "Donini", image: "",like: false),
    Profile(name: "Ernesto", image: "",like: true),
  ];

 MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 6"),
        backgroundColor: Colors.greenAccent,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, itens) {
                  return MyStory(
                    title: listaDados[itens].name,
                    image: listaDados[itens].image,
                    );
                }
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, item) {
                  return Mycard(
                    title: listaDados[item].name,
                    image: listaDados[item].image,
                    like:listaDados[item].like,
                    );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}