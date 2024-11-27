#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    test1 == 10

enum test{
  test1 = 0,
  test2 = 1
};

double r[NI];
void sub_abc() {
  int i;
  int II = 10;
  for (i=0; i<II; ++i) {
    r[i] = r[i] * i + 1.0;
  }
}

int main(void) {
  puts("OK");
}

