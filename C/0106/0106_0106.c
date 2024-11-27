#include "stdio.h"
int main() {
  int n = 0;
  double r = 0.0;
  int *p;
  int pp = 0;
  int i,j;

  struct zzz {
    int str;
  };

  struct zzz xyz;

  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      n = n + 1;
    }
  }

  printf("%d\n", n);

  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      r = r + 1.0;
    }
  }

  printf("%g\n", r);

  p = &pp;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      *p = *p + 1;
    }
  }

  printf("%d\n", *p);

  xyz.str = 0;
  for (i=0; i<100; i++) {
    for (j=0; j<100; j++) {
      xyz.str = xyz.str + 1;
    }
  }

  printf("%d\n", xyz.str);
}


