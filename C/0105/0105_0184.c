#include <stdio.h>
#include <math.h>

#define NI (1024)

#define _CLONE_    II == 10

#define _TRUE_ 1
#define _FALSE_ 0


double r[NI];
double sub_inline(double a) {
  return a+1;
}

void sub_abc(int II) {
  int i;

  for (i=0; i<II; ++i) {
    r[i] = r[i] * i + 1.0;
    r[i] = sub_inline(r[i]);
  }
}

int main(void) {
  int i;
  for (i=0; i<128; ++i) {
    sub_abc(i);
  }
  
  puts("OK");
}

