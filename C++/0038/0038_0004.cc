#include <cstdio>
#include <iostream>

class date {
public:
  int day, month, year;

  date(char *);

  date(int m, int d, int y) {
    day = d;
    month = m;
    year = y;
  }

  void show();
};

date::date(char *str) { sscanf(str, "%d%*c%d%*c%d", &year, &month, &day); }

int main() {
  date sdate("2006/1/20");
  date idate(1, 20, 2006);

  if (sdate.month == idate.month && sdate.year == idate.year &&
      sdate.day == idate.day) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
