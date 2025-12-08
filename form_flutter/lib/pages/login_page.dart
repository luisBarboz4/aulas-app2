import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/My_button.dart';
import 'package:form_flutter/widgets/My_text_field.dart';
import 'package:form_flutter/widgets/My_title.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _user = TextEditingController();
  final TextEditingController _Senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            SizedBox(height: 20),

            SizedBox(
              height: 150,
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/5087/5087579.png",
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 20),

            MyTitle(title: "Acesse sua conta"),

            SizedBox(height: 10),

            MyTextField(
              title: "Usuário",
              isDate: false,
              controller: _user,
            ),

            SizedBox(height: 15),

            TextField(
              controller: _Senha,
              decoration: InputDecoration(
                label: Text("Senha"),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 25),

            MyButton(
              title: "Entrar",
              icon: Icons.login,
              onClick: () {
                print("Usuário: ${_user.text}");
                print("Senha: ${_Senha.text}");
              },
            ),

            SizedBox(height: 10),

            MyButton(
              title: "Novo Registro",
              icon: Icons.person_add,
              onClick: () {

                print("Indo para registro...");
              },
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
