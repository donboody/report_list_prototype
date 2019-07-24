import 'package:flutter/material.dart';
import 'Report.dart';
import 'globalstate.dart';

class ReportListCard extends StatefulWidget {
  final Report report;

  ReportListCard(this.report);

  @override
  _ReportListCardState createState() => new _ReportListCardState(report);
}

class _ReportListCardState extends State<ReportListCard> {
  Report report;
  GlobalState _store = GlobalState.instance;

  _ReportListCardState(this.report);

  void _onTap() {
    _store.set('subjectLastName', report.subjectLastName);
    _store.set('controlNumber', report.controlNumber);
    _store.set('surveyType', report.surveyType);
    _store.set('subjectStreetAddress', report.subjectStreetAddress);
    _store.set('subjectCity', report.subjectCity);
    _store.set('subjectState', report.subjectState);
    _store.set('subjectZip', report.subjectZip);
    _store.set('customerName', report.customerName);
    _store.set('addressNumber', report.getAddressNumber(report));
    _store.set('imageFileName', report.imageFileName);
    Navigator.of(context).pushNamed('/ReportFileScreen');
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: _onTap,
        child: new Card(
          child: new Container(
            padding: EdgeInsets.all(4.0),
            child: new Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 24.0, bottom: 8.0, top: 8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment(0.0, 0.0),
                        child: Image.asset(
                          report.imageFileName,
                          fit: BoxFit.scaleDown,
                        ),
                        width: 128.0,
                        height: 128.0,
                      ),
                      Container(
                        child: Text(
                          report.subjectLastName,
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey.shade700),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          report.subjectStreetAddress,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.grey.shade700),
                        ),
                        Text(
                            '${report.subjectCity} ${report.subjectState} ${report.subjectZip}',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.grey.shade700)),
                        Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              report.controlNumber.toString(),
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey.shade700),
                            )),
                        Container(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(report.customerName,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey.shade700))),
                        Text(
                          report.surveyType,
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey.shade700),
                        ),
                        Text(
                          'Prenotification Required - Due 1/15',
                          style: TextStyle(
                              fontSize: 14.0, color: Colors.grey.shade700),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
