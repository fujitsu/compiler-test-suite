#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    M == 10
#define _TEST_ATTRIBUTE_ mode(__pointer__)


double r[NI];
void sub_abc(int m) {
  int i;
  int M __attribute__((_TEST_ATTRIBUTE_)) = 10;

  for (i=0; i<M; ++i) {
    r[i] = r[i] * i + M;
  }
}

int main(void) {
  puts("OK");
}

