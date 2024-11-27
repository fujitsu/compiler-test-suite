#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _TRUE_ 1
#define _FALSE_ 0


double r[NI];

void sub_abc(int II) {
  int i;
  if (II==100) {
    i = 10;
    goto dest;
  }
  for (i=0; i<II; ++i) {
  dest:
    r[i] = r[i] * i + 1.0;
  }

}

int main(void) {
  puts("OK");
}

