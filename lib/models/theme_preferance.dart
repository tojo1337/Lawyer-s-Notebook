enum ThemePreferance {
  light(1),
  dark(2);

  final int themeNumber;

  const ThemePreferance(this.themeNumber);

  getThemeNumber() {
    return themeNumber;
  }
}
