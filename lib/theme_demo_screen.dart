import 'package:case2_4/utilits/global_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  ThemeApp extends StatelessWidget {
  const ThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: const ThemeScreen(),
    );
  }
}

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {

  Widget _navigationDraw() => Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(

            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                ),
            ) )
      ],
    ),
  );
  PreferredSizeWidget  _appBar() => AppBar(
      title: const Text("Вход"),
      actions: [
                IconButton(
          onPressed: (){},
          icon: const Icon(Icons.settings),
          tooltip: "Уведомления",)
      ]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _navigationDraw(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 100,),

              SizedBox(
                width: 200,
                child: Text('Введите логин в виде 10 цифр номера телефона',
                  style: Theme.of(context).textTheme.headline2,),
              ),
              const SizedBox(height: 20),
              const SizedBox(width: 224,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                                        labelText: 'Телефон',
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const SizedBox(width: 224,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                  ),
                ),
              ),
              const SizedBox(height: 28,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                child: const Text('Войти', ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              )
              ),
              const SizedBox(height: 62,),
              InkWell(child: Text('Регистрация',style: Theme.of(context).textTheme.headline2,), onTap: () {},),
              const SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль?', style: Theme.of(context).textTheme.headline2,),
                  onTap: () {}),
            ],),


          ),
        ),
      );
      }
}



