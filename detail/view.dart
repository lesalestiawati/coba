import 'package:flutter/material.dart';
import './controller.dart';

class DetailView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends DetailController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home '),
      //   backgroundColor: Colors.black,
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black54,
            expandedHeight: 80.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "What Do You Want??",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: <Widget>[
                  Menuicon(
                    icon: Icons.hotel,
                    iconColor: Colors.red,
                    label: 'Hotel',
                  ),
                  Menuicon(
                    icon: Icons.train,
                    iconColor: Colors.blue,
                    label: 'Kereta',
                  ),
                  Menuicon(
                    icon: Icons.flight,
                    iconColor: Colors.purple,
                    label: 'Airplane',
                  ),
                  Menuicon(
                    icon: Icons.satellite,
                    iconColor: Colors.orange,
                    label: 'Satelit',
                  ),
                  Menuicon(
                    icon: Icons.motorcycle,
                    iconColor: Colors.green,
                    label: 'motorcycle',
                  ),
                  Menuicon(
                    icon: Icons.phone_android,
                    iconColor: Colors.blueGrey,
                    label: 'Pulsa',
                  ),
                  Menuicon(
                    icon: Icons.local_taxi,
                    iconColor: Colors.brown,
                    label: 'taxi',
                  ),
                  Menuicon(
                    icon: Icons.apps,
                    iconColor: Colors.pink,
                    label: 'Lainya',
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class Menuicon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  Menuicon({this.icon, this.iconColor, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: iconColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}
