#include <stdio.h>

static int g = 0;

void subi (int n) {
  if (n > 0)
    g++;

  if (n >= 0)
    g++;

  if (n < 0)
    puts ("NG");

  if (n <= 0)
    puts ("NG");

  if (n == 0)
    puts ("NG");

  if (n != 0)
    g++;

}

void subr (double n) {
  if (n > 0.0)
    puts ("NG");

  if (n >= 0.0)
    g++;

  if (n < 0.0)
    puts ("NG");

  if (n <= 0.0)
    g++;

  if (n == 0.0)
    g++;

  if (n != 0.0)
    puts ("NG");
}

int main() {
  int i;
  for (i=0; i<10; i++) {
    subi (10);
    subr (0.0);
    subr (0.0);
  }

  if (g == 90)
    puts ("OK");
  else
    puts ("NG");
}
