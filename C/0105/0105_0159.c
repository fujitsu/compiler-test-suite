#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    II == 10

double r[NI];
void sub_abc(register signed int II) {

  int i;
  for (i=0; i<II; ++i) {
    r[i] = r[i] * i + 1.0;
  }
}

int main(void) {
  sub_abc(10);
  puts("OK");
}
