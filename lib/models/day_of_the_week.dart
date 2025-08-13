enum WeekDays {
  mon(1, "mon"),
  twe(2, "tue"),
  wed(4, "wed"),
  thu(5, "thu"),
  fry(6, "fry"),
  sat(7, "sat"),
  sun(8, "sun");

  final int value;
  final String name;

  const WeekDays(this.value, this.name);

  int getValue() {
    return value;
  }

  String getName() {
    return name;
  }
}
