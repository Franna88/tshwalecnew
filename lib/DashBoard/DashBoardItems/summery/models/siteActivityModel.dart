class SiteActivityModel {
  final String activityName;
  final String siteOverseerName;
  final int siteRanking;
  final bool arrowUp;

  const SiteActivityModel(
      {required this.activityName,
      required this.arrowUp,
      required this.siteOverseerName,
      required this.siteRanking});
}

List<SiteActivityModel> siteActivity = [
  SiteActivityModel(
      activityName: 'Excavating was done on pole 2',
      arrowUp: true,
      siteOverseerName: 'M Botha',
      siteRanking: 1),
  SiteActivityModel(
      activityName: 'Planting was done on C1 52',
      arrowUp: false,
      siteOverseerName: 'B Botha',
      siteRanking: 4),
  SiteActivityModel(
      activityName: 'Veh Checklist Done',
      arrowUp: false,
      siteOverseerName: 'M Botha',
      siteRanking: 3),
  SiteActivityModel(
      activityName: 'Inspection Done on C1 31',
      arrowUp: true,
      siteOverseerName: 'M Botha',
      siteRanking: 2)
];
