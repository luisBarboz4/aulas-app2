import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/My_button.dart';
import 'package:form_flutter/widgets/My_slider.dart';
import 'package:form_flutter/widgets/My_switch.dart';
import 'package:form_flutter/widgets/my_alert.dart';
import 'package:form_flutter/widgets/my_checkbox.dart';
import 'package:form_flutter/widgets/my_radio.dart';
import 'package:form_flutter/widgets/my_text_field.dart';
import 'package:form_flutter/widgets/my_title.dart';
import 'package:form_flutter/widgets/my_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  final String? title;
  const FormPage({super.key, required this.title});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  double _sliderValue = 0;
  bool _notify = false;
  final List _ListPrefs = [];
  String _gender = "Masculino";
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerData = TextEditingController();

  @override
  void dispose() {
    _controllerNome.dispose();
    _controllerData.dispose();
    super.dispose();
  }

  void _changeList(pref) {
    (!_ListPrefs.contains(pref))
        ? _ListPrefs.add(pref)
        : _ListPrefs.remove(pref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário Flutter",
          style: GoogleFonts.uchen(),
        ),
      ),

      drawer: const MyDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyTitle(title: "dados pessoais"),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Nome",
                  isDate: false,
                  controller: _controllerNome,
                ),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Data de nascimento",
                  isDate: true,
                  controller: _controllerData,
                ),
              ),

              SizedBox(height: 15),

              MyTitle(title: "Gênero"),

              SizedBox(height: 15),

              MyRadio(
                value: (v) {
                  _gender = v!;
                },
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(
                    title: "Musica",
                    value: _changeList,
                  ),
                  MyCheckbox(
                    title: "Esports",
                    value: _changeList,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(
                    title: "culinária",
                    value: _changeList,
                  ),
                  MyCheckbox(
                    title: "Filmes e Séries",
                    value: _changeList,
                  ),
                ],
              ),

              SizedBox(height: 15),

              MyTitle(title: "escolaridade"),

              SizedBox(height: 15),

              MySlider(
                value: (v) {
                  _sliderValue = v!;
                },
              ),

              SizedBox(height: 15),

              MySwitch(
                value: (v) {
                  _notify = v!;
                },
                title: "Deseja receber notificaçoes?",
              ),

              SizedBox(height: 15),

              MyButton(
                onClick: () {
                  MyAlert.showSimpleDialog(
                    context,
                    "Dados pessoais",
                    "${_controllerNome.text}\n"
                    "${_controllerData.text}\n"
                    "$_gender\n"
                    "$_ListPrefs\n"
                    "$_sliderValue\n"
                    "$_notify",
                  );
                },
                title: "Salvar",
                icon: Icons.save,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
