import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_flutter/pages/form_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("pt","BR"),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale("en","US"),
        Locale("pt","BR"),
      ],

      debugShowCheckedModeBanner: false,
      title: "Formulário flutter",
      theme: ThemeData(
        primarySwatch: Colors.grey
        
      ),
      home: FormPage(title: "",),
    );
  }
}