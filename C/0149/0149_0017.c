#include <stdlib.h>
#include <stdio.h>
#include <math.h>
union {
  struct {
    unsigned char a:1; unsigned char :6; unsigned char b:1;
  } st;
  unsigned char mem;
} un;
 
int f1(int (void));
int f2(int (int));
int f3(int *);
int f4(int *(void));
int f5(int *(int));
int f6(int (*)(void));
int f11(void);
int f12(int);
int *f14(void);
int *f15(int);
int (*f16)(void);
int f166(void);
 
static int st1 = 1;
int main()
{
  {
    un.mem = 129u;
 
    if (un.st.b == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int a = 1;
 
    if (f1(f11) == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
 
    if (f2(f12) == 1)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
 
    if (f3(&a) == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
 
    if (f4(f14)== 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
 
    if (f5(f15) == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
 
    f16 = &f166;
    if (f6(f16) == 1)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
exit (0);
}
 
int f1(int f11(void))
{
  return (f11());
}
 
int f11()
{
  return (1);
}
 
int f2(int f12(int))
{
  return (f12(1));
}
 
int f12(int a)
{
  return (a);
}
 
int f3(int *a)
{
  return (*a);
}
 
int f4(int *f14(void))
{
  return (*f14());
}
 
int *f14()
{
  return (&st1);
}
 
int f5(int *f15(int))
{
  return (*f15(1));
}
 
int *f15(int a)
{
  st1 *= a;
  return (&st1);
}
 
int f6(int (*f16)(void))
{
  return ((*f16)());
}
 
int f166()
{
  return (st1);
}
