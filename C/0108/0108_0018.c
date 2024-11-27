#include <stdio.h>

void test1 (int n) {
  if (n > 0) {puts ("+");} else { puts ("-");};

  if (n > 0)
    { puts ("+"); } else { puts ("-"); };

  if (n > 0)
    { puts ("+");}
  else
    { puts ("-");};

  n > 0 ? puts ("+") : puts ("-");
}

void test2 (int n) {
  if (n == 0) {puts ("+");} else { puts ("-");};

  if (n == 0)
    { puts ("+"); } else { puts ("-"); };

  if (n == 0)
    { puts ("+");}
  else
    { puts ("-");};

  n == 0 ? puts ("+") : puts ("-");
}


int main() {
  test1 (10);
  test2 (10);
}
