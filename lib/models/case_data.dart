class CaseData {
  final DateTime caseDate;
  final DateTime previousDate;
  final DateTime nextDate;
  final String courtName;
  final String caseNo;
  final String nameOfParty;
  final String particular;
  final String year;
  final String stage;

  const CaseData(
    this.caseDate,
    this.previousDate,
    this.nextDate,
    this.courtName,
    this.caseNo,
    this.nameOfParty,
    this.particular,
    this.year,
    this.stage,
  );
}
