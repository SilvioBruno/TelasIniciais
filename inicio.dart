import 'package:flutter/material.dart';

class Inicio extends StatefulWidget{
  

  @override
  State<Inicio> createState() => _InicioState();
  
}

class _InicioState extends State<Inicio> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 42, 255),
          leading: BackButton(color: Colors.white,
          onPressed: (){
            Navigator.of(context).pushNamed('/');
          } ,
        ),title: Row( 
          children: [
          Icon(Icons.art_track,color: Colors.white,),
          SizedBox(width: 14,),
          const Text('Espaço Cultural - Obras',style: TextStyle(color: Colors.white),),] )
         
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index){
            setState(() {
              if(index == 0){
                Navigator.of(context).pushReplacementNamed('/');
              }
              else{
                currentPageIndex = index;
              }
            });
          },
          indicatorColor: Color.fromARGB(255, 0, 42, 255),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.logout,),
              icon: Icon(Icons.logout_outlined), 
              label: 'Logout'
              ),
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined), 
              label: 'Inicio'
              ),
            
          ],
          ),
        body: const CardUnifor(),
        ),
    );
  }

}

class CardUnifor extends StatelessWidget {
  const CardUnifor({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
       child: Card(
          color: Colors.blue,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/brasil.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.art_track, color: Colors.white,),
                  title: Text('Espaço Cultural - Artes Nacionais',
                  style: TextStyle(color: Colors.white),),
                  subtitle: Text('Olha o carcará man',style: TextStyle(color: Colors.white),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('EXPLORAR', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('INFORMAÇÕES', style: TextStyle(color: Colors.white),),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    SizedBox(height: 2,),
    Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Card(
        color: Colors.black,
          child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.art_track), // Ícone padrão
                      SizedBox(width: 8), // Adiciona espaço entre o ícone e a imagem
                      Image.asset(
                        'assets/images/Logo.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ],
              ),
                title: Text('Espaço Cultural - Artes Internacionais'),
                subtitle: Text('Look the carcará man'),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('EXPLORAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('INFORMAÇÕES'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    ),
    ],
    );
  }
}