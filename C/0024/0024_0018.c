#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <complex.h>

#define C16ANS 8.0+8.0i
int main()
{
  double _Complex c16_1;

  c16_1 = C16ANS ;
  if (c16_1 == C16ANS && c16_1 == C16ANS ){
    fprintf(stdout, "OK\n");
  } else {
    fprintf(stdout, "NG\n");
  }
}
