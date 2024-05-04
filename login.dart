// login.dart
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  

  String gerenciador = '';
  String senha = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/Logo.png'),
              ),
              SizedBox(height: 0,),
              TextField(
                onChanged: (text) {
                  setState(() {
                    gerenciador = text;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Gerenciador',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.manage_accounts, color: Colors.white,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  setState(() {
                    senha = text;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha de Acesso',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.lock, color: Colors.white,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 246, 245, 245))
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  if (gerenciador == 'adm' && senha == 'cristo') {
                    // Navegue para a próxima tela após o login bem-sucedido
                    // (não esqueça de adicionar a próxima tela aos imports)
                     Navigator.of(context).pushNamed('/home');
                  } else {
                    print("Acesso Negado");
                  }
                }, 
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 0, 247, 255))
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 1, 92, 250)),
                ),
                child: Text('Entrar',style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: (){
                  
                    // Navegue para a próxima tela após o login bem-sucedido
                    // (não esqueça de adicionar a próxima tela aos imports)
                     Navigator.of(context).pushNamed('/home');
                  
                }, 
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(width: 2, color: Color.fromARGB(255, 0, 247, 255))
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 1, 92, 250)),
                ),
                child: Text('Visitante',style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }


  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/login.jpeg', fit: BoxFit.cover,),
          ),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ],
      )
    );
  }
}
