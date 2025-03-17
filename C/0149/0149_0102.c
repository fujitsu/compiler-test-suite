#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct sttag { int a; int b; };
union  untag { int a; int b; };
enum   entag { emem0, emem1  };
 
int f01(char);
int f02(int);
int f03(long int);
int f04(short int);
int f11(signed char);
int f12(signed int);
int f13(signed long int);
int f14(signed short int);
int f21(unsigned char);
int f22(unsigned int);
int f23(unsigned long int);
int f24(unsigned short int);
int f31(int []);
int f32(int *);
int f33(struct sttag);
int f34(union  untag);
int f35(enum   entag);
int f36(int (*)(void));
int fun(void);
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char para = 1; int a;
 
    a = f01(para);
    if (a == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int para = 1,a;
 
    a = f02(para);
    if (a == 1)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int para = 1l; int a;
 
    a = f03(para);
    if (a == 1l)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int para = 1; int a;
 
    a = f04(para);
    if (a == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char para = 1; int a;
 
    a = f11(para);
    if (a == 1)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int para = 1; int a;
 
    a = f12(para);
    if (a == 1)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int para = 1l; int a;
 
    a = f13(para);
    if (a == 1l)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int para = 1; int a;
 
    a = f14(para);
    if (a == 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char para = 1u; int a;
 
    a = f21(para);
    if (a == 1u)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int para = 1u; int a;
 
    a = f22(para);
    if (a == 1u)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int para = 1ul; int a;
 
    a = f23(para);
    if (a == 1ul)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int para = 1u; int a;
 
    a = f24(para);
    if (a == 1u)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    static int vec[2] = { 1,2 },a;
 
    a = f31(vec);
    if (a == 1)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int val = 1,*ptr = &val,a;
 
    a = f32(ptr);
    if (a == 1)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    static struct sttag st = { 1,2 }; int a;
 
    a = f33(st);
    if (a == 1)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    static union untag un = { 1 }; int a;
 
    a = f34(un);
    if (a == 1)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    enum entag en1 = 0; int a;
 
    a = f35(en1);
    if (a == emem0)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    int a;
 
    a = f36(fun);
    if (a == 1)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int f01(char a)
{
  return ((int) a);
}
 
int f02(int a)
{
  return (a);
}
 
int f03(long int a)
{
  return ((int) a);
}
 
int f04(short int a)
{
  return ((int) a);
}
 
int f11(signed char a)
{
  return ((int) a);
}
 
int f12(signed int a)
{
  return ((int) a);
}
 
int f13(signed long int a)
{
  return ((int) a);
}
 
int f14(signed short int a)
{
  return ((int) a);
}
 
int f21(unsigned char a)
{
  return ((int) a);
}
 
int f22(unsigned int a)
{
  return ((int) a);
}
 
int f23(unsigned long int a)
{
  return ((int) a);
}
 
int f24(unsigned short int a)
{
  return ((int) a);
}
 
int f31(int *a)
{
  return (*a);
}
 
int f32(int *a)
{
  return (*a);
}
 
int f33(struct sttag st)
{
  return (st.a);
}
 
int f34(union untag un)
{
  return (un.a);
}
 
int f35(enum entag en)
{
  return (en);
}
 
int f36(int (*f)(void))
{
  return ((*f)());
}
 
int fun(void)
{
  return (1);
}
