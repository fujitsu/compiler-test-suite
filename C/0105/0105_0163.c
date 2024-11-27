#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    d == 10

union test{
  int a;
  int b;
};

double r[NI];
void sub_abc() {
  union test d;
  int i;
  int II = 10;
  d.a  = 10;
  for (i=0; i<II; ++i) {
    r[i] = r[i] * i + 1.0 + d.b;
  }
}

int main(void) {
  puts("OK");
}

