import 'package:flutter/material.dart';
import 'package:flutter_registration_and_listview/example_button.dart';
import 'package:flutter_registration_and_listview/example_text_field.dart';
import 'package:flutter_registration_and_listview/login_page.dart';
import 'package:flutter_registration_and_listview/registration_page.dart';



class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(

                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network("https://avatars.mds.yandex.net/i?id=6b703b39cbf86f5a7c9366cd63f7ab9bebc0bc63-5232470-images-thumbs&n=13"),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Введите логин:'
                    ),
                    maxLength: 30,
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ExampleTextField(HintText: 'Введите пароль:', MAXLength: 10)
                )
            ),
            Expanded(
                child: Container(

            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                  child: ExampleButton(text: 'Войти'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login())
                    );
                  }
              ),
            )
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  child: ExampleButton(text: 'Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                    );
                  }
            )
            )
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('Приложение для авторизации'),),
    );
  }
}