import 'package:flutter/material.dart';
import 'globalstate.dart';

class ReportFileScreen extends StatefulWidget {
  @override
  _ReportFileScreenState createState() => new _ReportFileScreenState();
}

class _ReportFileScreenState extends State<ReportFileScreen> {
  GlobalState _store = GlobalState.instance;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    '${_store.get('subjectStreetAddress')}',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600),
                  ),
                ),
                Text(
                  'TONAWANDA, NY 14150',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey.shade600),
                ),
                Text(
                  'PSD 10/28 - Due 10/30',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey.shade600),
                )
              ],
            ),
          )
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Colors.red[900];

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.drive_eta, 'Drive'),
          buildButtonColumn(Icons.streetview, 'Street View'),
          buildButtonColumn(Icons.cloud, 'Weather'),
          buildButtonColumn(Icons.near_me, 'Nearby'),
          buildButtonColumn(Icons.add_alarm, 'Reminder')
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
      child: Text(
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
         ''',
        softWrap: true,
      ),
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey.shade600,
          ),
          backgroundColor: Colors.white,
          title: Text(
            '${_store.get('subjectStreetAddress')}',
            style: TextStyle(color: Colors.grey.shade600),
          ),
          bottom: TabBar(
            indicatorColor: Colors.red[900],
            unselectedLabelColor: Colors.grey.shade600,
            labelColor: Colors.red[900],
            tabs: <Widget>[
              Tab(
                child: new Text(
                  'COVER',
                ),
              ),
              Tab(
                child: new Text(
                  'MANAGE',
                ),
              ),
              Tab(
                child: new Text(
                  'MESSAGES',
                ),
              )
            ],
          ),
          actions: <Widget>[new IconButton(icon: new Icon(Icons.search))],
        ),
        body: ListView(
          children: [
            Image.asset(
              _store.get('imageFileName'),
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            buttonSection,
            titleSection,
            textSection,
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red[900],
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Main"),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.check_circle_outline),
                title: new Text("Forms")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.edit), title: new Text("Sketch")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.collections), title: new Text("Photos")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.contacts), title: new Text("contacts"))
          ],
        ),
      ),
    );
  }
}
