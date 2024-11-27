
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>

union convert { char c; };

int main(void) {
  union convert u;
  char cc;

  cc = 'C';
  u = (union convert)cc;
  if (u.c==cc) printf("ok1\n");
  else         printf("ng1\n");


return 0;

}
