import 'Report.dart';

class ReportList {
  List<Report> reports = []
    ..add(new Report(
        controlNumber: 14526234,
        surveyType: 'EXTERIOR ONLY - Diagram + RC',
        subjectCity: 'TONAWANDA',
        subjectLastName: 'Boody',
        subjectState: 'NY',
        subjectZip: '14150',
        subjectStreetAddress: '63 Main St',
        customerName: '5679 - IT Testing Customer',
        imageFileName: 'images/house.png'))
    ..add(new Report(
        controlNumber: 17539823,
        surveyType: 'EXTERIOR ONLY - Diagram + RC',
        subjectCity: 'TONAWANDA',
        subjectLastName: 'Smith',
        subjectState: 'NY',
        subjectZip: '14150',
        subjectStreetAddress: '44 Franklin St',
        customerName: '5679 - IT Testing Customer',
        imageFileName: 'images/house0.png'))
    ..add(new Report(
        controlNumber: 19457468,
        surveyType: 'EXTERIOR ONLY - Diagram + RC',
        subjectCity: 'TONAWANDA',
        subjectLastName: 'Jones',
        subjectState: 'NY',
        subjectZip: '14150',
        subjectStreetAddress: '88 River Rd',
        customerName: '5679 - IT Testing Customer',
        imageFileName: 'images/house1.png'))
    ..add(new Report(
        controlNumber: 13657845,
        surveyType: 'EXTERIOR ONLY - Diagram + RC',
        subjectCity: 'TONAWANDA',
        subjectLastName: 'Evans',
        subjectState: 'NY',
        subjectZip: '14150',
        subjectStreetAddress: '29 Concord Ct',
        customerName: '5679 - IT Testing Customer',
        imageFileName: 'images/house2.png'))
    ..add(
      new Report(
          controlNumber: 12659874,
          surveyType: 'EXTERIOR ONLY - Diagram + RC',
          subjectCity: 'TONAWANDA',
          subjectLastName: 'Wayne',
          subjectState: 'NY',
          subjectZip: '14150',
          subjectStreetAddress: '25 Broad St',
          customerName: '5679 - IT Testing Customer',
          imageFileName: 'images/house3.png'),
    );

  List<Report> sortAddressAZDescend(List<Report> reports) {
    List<Report> sortAddressAZ = new List<Report>.from(reports);
    bool flag = true;
    Report temp;
    while (flag) {
      flag = false;
      for (int i = 0; i < sortAddressAZ.length - 1; i++) {
        if (sortAddressAZ[i].addressNumber <
            sortAddressAZ[i + 1].addressNumber) {
          temp = sortAddressAZ[i];
          sortAddressAZ[i] = sortAddressAZ[i + 1];
          sortAddressAZ[i + 1] = temp;
          flag = true;
        }
      }
    }

    return sortAddressAZ;
  }

  List<Report> sortAddressAZAscend(List<Report> reports) {
    List<Report> sortAddressAZ = new List<Report>.from(reports);
    bool flag = true;
    Report temp;
    while (flag) {
      flag = false;
      for (int i = 0; i < sortAddressAZ.length - 1; i++) {
        if (sortAddressAZ[i].addressNumber >
            sortAddressAZ[i + 1].addressNumber) {
          temp = sortAddressAZ[i];
          sortAddressAZ[i] = sortAddressAZ[i + 1];
          sortAddressAZ[i + 1] = temp;
          flag = true;
        }
      }
    }

    return sortAddressAZ;
  }

  List<Report> sort(List<Report> reports) {
    List<Report> newList = new List<Report>.from(sortAddressAZDescend(reports));
    return newList;
  }
}
