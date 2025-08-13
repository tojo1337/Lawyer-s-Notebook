enum MonthOfTheYear {
  january(1, "January"),
  february(2, "February"),
  march(3, "March"),
  april(4, "April"),
  may(5, "May"),
  june(6, "June"),
  july(7, "July"),
  august(8, "August"),
  september(9, "September"),
  october(10, "October"),
  november(11, "November"),
  december(12, "December");

  final int id;
  final String name;

  const MonthOfTheYear(this.id, this.name);

  int getId() => id;
  String getName() => name;

  static String nameFromId(int value) {
    for (var month in MonthOfTheYear.values) {
      if (month.id == value) return month.name;
    }
    return "";
  }
}
