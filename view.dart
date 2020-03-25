import 'package:flutter/material.dart';
// import 'package:latihan_flutter/home/detail/view.dart';
import './controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GassKeun",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              'Welcome...',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
              title: new Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 40,
              ),
              title: new Text('')),
        ],
        onTap: (index) {
          _incrementTab(index);
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black45),
              currentAccountPicture: new Container(
                // margin: const EdgeInsets.only(bottom: 40.0),
                width: 40.0,
                height: 40.0,

                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('images/digidaw22.png'),
                  ),
                ),
              ),
              accountName: Text('Digidaw'),
              accountEmail: Text('asepud28@gmail.com'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/home'),
              title: Text("Applikasi"),
              // onTap: () => Navigator.of(context).push(
              //     MaterialPageRoute(builder: (BuildContext _) => DetailView())),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.apps),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/response'),
              title: Text("Layanan"),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.archive),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/info'),
              title: Text("Tentang"),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.verified_user),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/qrscan'),
              title: Text("QR Scanner"),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
