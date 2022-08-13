import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 24, 74),
      body: cuerpo(),
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(),
    child: Center(
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
            SizedBox(height:80),
           singUp(),
            // SizedBox(height: 20,),
          //  nombre(),
           SizedBox(height: 40),
            nombre(),
            SizedBox(height: 20),
            // SizedBox(height: 40,),
            // parent(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // buildSocialIcon(FontAwesomeIcons.facebook),
                const SizedBox(width: 30),
                parent(),
                const SizedBox(width: 30),
                child(),
                const SizedBox(width: 30),
                teacher(),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 33),
                Text("Parent",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                const SizedBox(width: 60),
                Text("Child",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                const SizedBox(width: 60),
                Text("Teacher",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            campoUsuario(),
            SizedBox(height: 20),
            campoEmail(),
            SizedBox(height: 20),
            campoContrasenia(),
            SizedBox(height: 20),
            campoConfirmarContrasenia(),
            SizedBox(height: 60),
            botonLogin(),
            SizedBox(height: 40),
            Row(   
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 33),
                textoFinal(),
                botonLoginHere(),
                iconBuscar(),
                ],
            ),
            
        ],
      ),
    ),
  );

}

Widget parent(){
 return SvgPicture.asset('assets/padre.svg',height: 70,);
// return Image.asset('assets/padres.png',height: 200,);
}
Widget child(){
 return SvgPicture.asset('assets/estudiante.svg',height: 70,);
// return Image.asset('assets/padres.png',height: 200,);
}
Widget teacher(){
 return SvgPicture.asset('assets/teacher.svg',height: 70,);
}
Widget singUp(){
 return Text("Sing Up!", style: TextStyle(color: Colors.white, fontSize: 30),);

}

Widget nombre(){
 return Text("Who you are?", style:  TextStyle(color: Color.fromARGB(255, 61, 70, 233),fontSize: 17, fontWeight: FontWeight.bold ),);

}

Widget buildSocialIcon(IconData icon) => CircleAvatar(
  radius: 25,
  child: Center(child: Icon(icon, size: 32)),

);

Widget campoUsuario(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            prefixIcon: Icon(Icons.person),
            // hintText: 'Username',
            labelText: 'Username',
            fillColor: Colors.white,
            filled: true,
          ),
          onChanged: (value){

          },
        ),
      );
    }


  );


}

Widget campoEmail(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            prefixIcon: Icon(Icons.email),
            hintText: 'ejemploJuanito@gmail.com',
            labelText: 'Email',
            fillColor: Colors.white,
            filled: true,
          ),
          onChanged: (value){

          },
        ),
      );
    }


  );


}
Widget campoContrasenia(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            fillColor: Colors.white,
            filled: true,
          ),
          onChanged: (value){

          },
        ),
      );
    }


  );
}

Widget campoConfirmarContrasenia(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            prefixIcon: Icon(Icons.lock),
            labelText: 'Confirm Password',
            fillColor: Colors.white,
            filled: true,
          ),
          onChanged: (value){

          },
        ),
      );
    }


  );


}

Widget botonLogin(){
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 130.0,vertical: 15.0),
          child: Text('SingUp',
          style: TextStyle(
            fontSize: 20.0, 
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        elevation: 8.0,
        color: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: (){}
      );
    }
    
  );  
}

Widget textoFinal(){
 return Text("Already have an account.", style:  TextStyle(color: Color.fromARGB(255, 204, 204, 206),fontSize: 12, fontWeight: FontWeight.bold ),);
}
Widget botonLoginHere(){
  return FlatButton(
    
    child: Text("SingUp",style: TextStyle(fontSize: 11 ,color: Colors.deepOrange),),
    onPressed: (){},
  );
}

Widget iconBuscar(){
  return Icon(Icons.search ,color: Color.fromARGB(255, 255, 255, 255),);
}