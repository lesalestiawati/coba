import 'package:flutter/material.dart';
import 'package:digidaw/home/detail/view.dart';
import 'package:digidaw/info/view.dart';
import './home/view.dart';
import './response/view.dart';
import './info/view.dart';
// import './login.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gasskeun',
      routes: {
        '/': (buildcontext) => HomeView(),
        '/home': (buildcontext) => DetailView(),
        '/response': (buildcontext) => ResponseView(),
        '/info': (buildcontext) => InfoView(),
      },
      initialRoute: '/',
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(HomePage());
// }

// class HomePage extends StatelessWidget {
//   static String tag = 'homePage';
//   build(context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.black,
//           leading: Icon(Icons.motorcycle
//           ),
//           title: Text('GassKeun..!!')),
//     ));
//   }
// }
