enum WeekDays {
  mon(1, "mon"),
  twe(2, "tue"),
  wed(3, "wed"),
  thu(4, "thu"),
  fry(5, "fry"),
  sat(6, "sat"),
  sun(7, "sun");

  final int value;
  final String name;

  const WeekDays(this.value, this.name);
}
