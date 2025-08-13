enum HamburderMenuEntries {
  search("Search"),
  myCases("My Cases"),
  caseBreakDown("Case Break Down"),
  print("Print"),
  freeDtatement("Free Statement"),
  missedDate("Missed Avd. Date"),
  settings("Settings"),
  about("About"),
  help("Help");

  final String name;

  const HamburderMenuEntries(this.name);

  static String getEntryValue(HamburderMenuEntries value) => value.name;
}
