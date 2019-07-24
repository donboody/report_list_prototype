class Report {
  int controlNumber;
  String surveyType;
  String customerName;
  String policyNumber;
  String loanNumber;
  String subjectStreetAddress;
  String subjectCity;
  String subjectState;
  String subjectZip;
  String subjectCounty;
  String subjectFirstName;
  String subjectLastName;
  String subjectPhoneNumber;
  String subjectEmail;
  String subjectPreferredContact;
  bool appointmentRequired;
  bool preNotificationRequired;
  String businessLine;
  int addressNumber;
  String imageFileName;

  Report(
      {int controlNumber,
      String surveyType,
      String customerName,
      String policyNumber,
      String loanNumber,
      String subjectStreetAddress,
      String subjectCity,
      String subjectState,
      String subjectZip,
      String subjectCounty,
      String subjectFirstName,
      String subjectLastName,
      String subjectPhoneNumber,
      String subjectEmail,
      String subjectPreferredContact,
      bool appointmentRequired,
      bool preNotificationRequired,
      String businessLine,
      int addressNumber,
      String imageFileName}) {
    this.controlNumber = controlNumber;
    this.surveyType = surveyType;
    this.subjectStreetAddress = subjectStreetAddress;
    this.subjectCity = subjectCity;
    this.subjectState = subjectState;
    this.subjectZip = subjectZip;
    this.customerName = customerName;
    this.subjectLastName = subjectLastName;
    this.addressNumber = getAddressNumber(this);
    this.imageFileName = imageFileName;
  }

  @override
  String toString() {
    String report = '';
    print('Business line: ${this.businessLine}\n'
        'Control number: ${this.controlNumber}\n'
        'Survey type: ${this.surveyType}\n'
        'Customer name: ${this.customerName}\n'
        'Policy number: ${this.policyNumber}\n'
        'Loan number: ${this.loanNumber}\n'
        'Street address: ${this.subjectStreetAddress}\n'
        'City: ${this.subjectCity}\n'
        'State: ${this.subjectState}\n'
        'Zip: ${this.subjectZip}\n'
        'County: ${this.subjectCounty}\n'
        'Name: ${this.subjectLastName}\n'
        'Phone numeber: ${this.subjectPhoneNumber}\n'
        'Email: ${this.subjectEmail}\n'
        'Preferred contact method: ${this.subjectPreferredContact}\n'
        'Appointment required: ${this.appointmentRequired}\n'
        'Prenotification required: ${this.preNotificationRequired}\n'
        '=============');
    return report;
  }

  int getAddressNumber(Report report) {
    var parts = report.subjectStreetAddress.split(' ');
    int addressNumber = int.parse(parts[0]);
    return addressNumber;
  }
}
