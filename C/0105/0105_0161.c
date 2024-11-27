#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    da == 10

struct test{
  int a;
  int b;
};

double r[NI];
void sub_abc() {
  struct test d;
  int i;
  int II = 10;
  int da = 10;
  for (i=0; i<II; ++i) {
    r[i] = r[i] * i + 1.0 + da;
  }
}

int main(void) {
  puts("OK");
}

