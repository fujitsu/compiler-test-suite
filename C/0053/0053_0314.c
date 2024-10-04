#include<stdio.h>
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
  printf("********** \n");
  {
    char para = 1; int a;

    a = f01(para);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int para = 1,a;

    a = f02(para);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int para = 1l; int a;

    a = f03(para);
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int para = 1; int a;

    a = f04(para);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char para = 1; int a;

    a = f11(para);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int para = 1; int a;

    a = f12(para);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int para = 1l; int a;

    a = f13(para);
    if (a == 1l)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int para = 1; int a;

    a = f14(para);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char para = 1u; int a;

    a = f21(para);
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int para = 1u; int a;

    a = f22(para);
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int para = 1ul; int a;

    a = f23(para);
    if (a == 1ul)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int para = 1u; int a;

    a = f24(para);
    if (a == 1u)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static int vec[2] = { 1,2 },a;

    a = f31(vec);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int val = 1,*ptr = &val,a;

    a = f32(ptr);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static struct sttag st = { 1,2 }; int a;

    a = f33(st);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    static union untag un = { 1 }; int a;

    a = f34(un);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum entag en1 = 0; int a;

    a = f35(en1);
    if (a == emem0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int a;

    a = f36(fun);
    if (a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
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
