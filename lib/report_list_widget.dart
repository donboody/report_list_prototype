import 'package:flutter/material.dart';
import 'report_list_card_widget.dart';
import 'Report.dart';


class ReportListWidget extends StatelessWidget {

  final List<Report> reports;
  ReportListWidget(this.reports);



  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context) {
    return new ListView.builder(
      itemCount: reports.length,
      itemBuilder: (context, int) {
        return new ReportListCard(reports[int]);
      },
    );
  }


  }
