#include <stdio.h>
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
    long long int a;

    a = 0x100000000;
    if (a == 4294967296u)
        printf("***** \n");
    a=0x100000000;
    if (a == 4294967296u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x100000000;
    if (a == 4294967296u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x100000000;
    if (a == 4294967296u)
        printf("***** \n");
  }
  {
    long long int a;

    a = 0x100000000;
    if (a == 4294967296ul)
        printf("***** \n");
    a=0x100000000;
    if (a == 4294967296ul)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0xffffU;
    if (a == 65535u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0xffffu;
    if (a == 65535u)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0x10000U;
    if (a == 65536ul)
        printf("***** \n");
    a=0x10000u;
    if (a == 65536ul)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0x10000u;
    if (a == 65536ul)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0x10000u;
    if (a == 65536ul)
        printf("***** \n");
  }
  {
    int a;

    a = 0x7ffe;
    if (a == 32766)
        printf("***** \n");
    a=0x7ffe;
    if (a == 32766)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0x7ffe;
    if (a == 32766)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0x7ffe;
    if (a == 32766)
        printf("***** \n");
  }
  {
    int a;

    a = 0x7fff;
    if (a == 32767)
        printf("***** \n");
    a=0x7fff;
    if (a == 32767)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0x7fff;
    if (a == 32767)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0x7fff;
    if (a == 32767)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0x8000;
    if (a == 32768l)
        printf("***** \n");
    a=0x8000;
    if (a == 32768l)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0x8000;
    if (a == 32768l)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0x8000;
    if (a == 32768l)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0177776U;
    if (a == 65534u)
        printf("***** \n");
    a=0177776l;
    if (a == 65534u)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a = 0177776u;
    if (a == 65534u)
        printf("***** \n");
    a = 0 + 0 + 0 + m4(0); a=0177776u;
    if (a == 65534u)
        printf("***** \n");
  }
  {
    unsigned long int a;

    a = 0177777u;
    if (a == 65535u)
        printf("***** \n");
    a=0177777u;
    if (a == 65535u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a = 0177777U;
    if (a == 65535u)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + 0 + m4(0);a=0177777U;
    if (a == 65535u)
        printf("***** \n");
  }
  {
    unsigned int a;

    a = 0200000u;
    if (a == 65536lu)
        printf("***** \n");
    a=0200000U;
    if (a == 65536lu)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 +m4(0); a = 0200000U;
    if (a == 65536lu)
        printf("***** \n");
    a = 0 + 0 + 0 + 0 + m4(0); a=0200000u;
    if (a == 65536lu)
        printf("***** \n");
  }
  printf("********** \n");
}
