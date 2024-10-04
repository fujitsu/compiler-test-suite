#include<stdio.h>
#define ml(x) ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( x + 
#define m1(x) ( ( ( ( ( ( ( ( ( x ) ) ) ) ) ) ) ) )   
#define mr(x) + x ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) 
#define m2(x) ml(x) ml(x) m1(x) mr(x) mr(x)           
#define m3(x) m2(x) + m2(x) + m2(x) + m2(x) + m2(x)   
#define m4(x) m3(x) + m3(x)                           
int main()
{
  printf("********** \n");
  {
    unsigned int a;

    a = 0x0u;
    if (a == 0u)
        printf("***** \n");
    a=0x0u;
    if (a == 0u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x0U;
    if (a == 0u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x0U;
    if (a == 0u)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0xfffffffeu;
    if (a == 4294967294u)
        printf("***** \n");
    a=0xfffffffeU;
    if (a == 4294967294u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0xfffffffeU;
    if (a == 4294967294u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0xfffffffeu;
    if (a == 4294967294u)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0xffffffffU;
    if (a == 4294967295u)
        printf("***** \n");
    a=0xffffffffu;
    if (a == 4294967295u)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0xffffffffu;
    if (a == 4294967295u)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0xffffffffu;
    if (a == 4294967295u)
        printf("***** \n");
  }
  {
    long int a;

    a = 0x0l;
    if (a == 0l)
        printf("***** \n");
    a=0x0l;
    if (a == 0l)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x0L;
    if (a == 0l)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x0L;
    if (a == 0l)
        printf("***** \n");
  }
  {
    long int a;

    a = 0x7ffffffel;
    if (a == 2147483646l)
        printf("***** \n");
    a=0x7ffffffeL;
    if (a == 2147483646l)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0x7ffffffeL;
    if (a == 2147483646l)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0x7ffffffel;
    if (a == 2147483646l)
        printf("***** \n");
  }
  {
    long int a;

    a = 0x7fffffffL;
    if (a == 2147483647l)
        printf("***** \n");
    a=0x7fffffffl;
    if (a == 2147483647l)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0x7fffffffl;
    if (a == 2147483647l)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0x7fffffffl;
    if (a == 2147483647l)
        printf("***** \n");
  }
  {
    unsigned long int a;

    a = 0x80000000L;
    if (a == 2147483648ul)
        printf("***** \n");
    a=0x80000000l;
    if (a == 2147483648ul)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0x80000000l;
    if (a == 2147483648ul)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0x80000000l;
    if (a == 2147483648ul)
        printf("***** \n");
  }
  {
    unsigned long int a;

    a = 0x0lu;
    if (a == 0ul)
        printf("***** \n");
    a=0x0lu;
    if (a == 0ul)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x0LU;
    if (a == 0ul)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x0LU;
    if (a == 0ul)
        printf("***** \n");
  }
  {
    unsigned long int a;

    a = 0xfffffffeul;
    if (a == 4294967294lu)
        printf("***** \n");
    a=0xfffffffeUl;
    if (a == 4294967294lu)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0xfffffffeLU;
    if (a == 4294967294lu)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0xfffffffeul;
    if (a == 4294967294lu)
        printf("***** \n");
  }
  {
    unsigned long int a;

    a = 0xfffffffflU;
    if (a == 4294967295ul)
        printf("***** \n");
    a=0xfffffffflu;
    if (a == 4294967295ul)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0xfffffffful;
    if (a == 4294967295lu)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0xfffffffflu;
    if (a == 4294967295ul)
        printf("***** \n");
  }
  {
    int a;

    a = 0x0;
    if (a == 0)
        printf("***** \n");
    a=0x0;
    if (a == 0)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x0;
    if (a == 0)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x0;
    if (a == 0)
        printf("***** \n");
  }
  {
    int a;

    a = 0x7ffffffe;
    if (a == 2147483646)
        printf("***** \n");
    a=0x7ffffffe;
    if (a == 2147483646)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0x7ffffffe;
    if (a == 2147483646)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0x7ffffffe;
    if (a == 2147483646)
        printf("***** \n");
  }
  {
    int a;

    a = 0x7fffffff;
    if (a == 2147483647)
        printf("***** \n");
    a=0x7fffffff;
    if (a == 2147483647)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0x7fffffff;
    if (a == 2147483647)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0x7fffffff;
    if (a == 2147483647)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0x80000000;
    if (a == 2147483648u)
        printf("***** \n");
    a=0x80000000;
    if (a == 2147483648u)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0x80000000;
    if (a == 2147483648u)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0x80000000;
    if (a == 2147483648u)
        printf("***** \n");
  }
  printf("********** \n");
}
