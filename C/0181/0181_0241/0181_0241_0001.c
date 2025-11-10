#include <stdio.h>

typedef union __attribute__ ((transparent_union))
{
  int ival;
  char cval[4];
  float fval;
} TPU;

void sub1(TPU t)
{
  printf("%d\n", t.ival);
}

void sub2(TPU t)
{
  printf("%s\n", t.cval);
}

void sub3(TPU t)
{
  printf("%3.5f\n", t.fval);
}
