#include <stdio.h>

typedef union __attribute__ ((transparent_union))
{
  int ival;
  char cval[4];
  float fval;
} TPU;

extern void sub1(TPU t);
extern void sub2(TPU t);
extern void sub3(TPU t);
int main()
{
  
  

  sub1(12345678);
  sub2(0x00004b4f);
  sub3(12345678);
  return 0;
}
