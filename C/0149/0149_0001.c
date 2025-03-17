#include <stdlib.h>
#include <stdio.h>
#include <math.h>
typedef int a;
 
void f1(register volatile const a);
void f2(register volatile a);
void f3(register a);
void f4(volatile const a);
void f5(volatile a);
void f6(a);
int main()
{
  f1(1);
  f2(1);
  f3(1);
  f4(1);
  f5(1);
  f6(1);
exit (0);
}
 
void f1(b)
register volatile const a b;
{
  if (b == 1)
      printf("***** CATEGORY - 01 ***** O K *****\n");
    else
      printf("***** CATEGORY - 01 ***** N G *****\n");
}
 
void f2(b)
register volatile a b;
{
  if (b == 1)
      printf("***** CATEGORY - 02 ***** O K *****\n");
    else
      printf("***** CATEGORY - 02 ***** N G *****\n");
}
 
void f3(b)
register a b;
{
  if (b == 1)
      printf("***** CATEGORY - 03 ***** O K *****\n");
    else
      printf("***** CATEGORY - 03 ***** N G *****\n");
}
 
void f4(b)
volatile const a b;
{
  if (b == 1)
      printf("***** CATEGORY - 04 ***** O K *****\n");
    else
      printf("***** CATEGORY - 04 ***** N G *****\n");
}
 
void f5(b)
volatile a b;
{
  if (b == 1)
      printf("***** CATEGORY - 05 ***** O K *****\n");
    else
      printf("***** CATEGORY - 05 ***** N G *****\n");
}
 
void f6(b)
a b;
{
  if (b == 1)
      printf("***** CATEGORY - 06 ***** O K *****\n");
    else
      printf("***** CATEGORY - 06 ***** N G *****\n");
}
