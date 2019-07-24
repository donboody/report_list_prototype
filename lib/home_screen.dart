import 'package:flutter/material.dart';
import 'report_list_widget.dart';
import 'ReportList.dart';
import 'globalstate.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  GlobalState _store = GlobalState.instance;

  @override
  void initState() {
    super.initState();
    _store.set('subjectLastName', '');
    _store.set('controlNumber', '');
    _store.set('surveyType', '');
    _store.set('subjectStreetAddress', '');
    _store.set('subjectCity', '');
    _store.set('subjectState', '');
    _store.set('subjectZip', '');
    _store.set('customerName', '');
    _store.set('addressNumber', '');
    _store.set('imageFileName', '');
  }

  ReportList reportList = new ReportList();

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.grey.shade600),
          bottom: TabBar(
            indicatorColor: Colors.red[900],
            unselectedLabelColor: Colors.grey.shade600,
            labelColor: Colors.red[900],
            tabs: <Widget>[
              Tab(
                child: new Text(
                  'UNSCHEDULED',
                ),
              ),
              Tab(
                child: new Text(
                  'SCHEDULED',
                ),
              ),
              Tab(
                child: new Text(
                  'RETURNED',
                ),
              )
            ],
          ),
          leading: new IconButton(
            icon: new Icon(Icons.map),
          ),
          backgroundColor: Colors.white,
          title: new TextField(
              decoration: new InputDecoration(
                  labelText: 'Search',
                  suffixIcon:
                      new Icon(Icons.search, color: Colors.grey.shade600),
                  hintStyle: new TextStyle(color: Colors.grey.shade600),
                  labelStyle: new TextStyle(color: Colors.grey.shade600)),
              cursorColor: Colors.grey.shade600),
          actions: <Widget>[new IconButton(icon: new Icon(Icons.filter_list))],
        ),
        body: new Container(
            color: Colors.grey.shade300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 24.0),
                        height: 48.0,
                        color: Colors.white,
                        alignment: Alignment(1.0, 0.0),
                        child: Text(
                          'Address A-Z',
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(right: 24.0),
                      color: Colors.white,
                      height: 48.0,
                      alignment: Alignment(1.0, 0.0),
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
                new Expanded(
                  child: new ReportListWidget(
                      reportList.sortAddressAZAscend(reportList.reports)),
                )
              ],
            )),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red[900],
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.description),
              title: new Text("Reports"),
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.import_export), title: new Text("Portal")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person), title: new Text("Scorecard")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.attach_money), title: new Text("MAC")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.web), title: new Text("News"))
          ],
        ),
      ),
    );
  }
}
