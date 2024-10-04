#include<stdio.h>
int exa = 1,exb = 2;
int dxa = 3,dxb = 4;
int main()
{
  printf("********** \n");
  {extern int exb;
    extern int exa;

    if (exa == 1)
        printf("***** \n");
    if (exb == 2)
        printf("***** \n");
  }
  {static int b = 2;
    static int a = 1;

    if (a == 1)
        printf("***** \n");
    if (b == 2)
        printf("***** \n");
  }
  {struct { int a; } st2;
    struct { int b; } st1;

    st1.b = 1;
    if (st1.b == 1)
        printf("***** \n");
    st2.a = 2;
    if (st2.a == 2)
        printf("***** \n");
  }
  {
    int a,b;

    a = sizeof(unsigned long int);
#if INT64 || LONG64  || __x86_64__ || __aarch64__
    if (a == 8)
#else
    if (a == 4)
#endif
        printf("***** \n");
    b=sizeof(unsigned short int);
    if (b == 2)
        printf("***** \n");
  }
  {
    int f1(void),f2(void);

    if (f1() == 1)
        printf("***** \n");
    if (f2() == 2)
        printf("***** \n");
  }
  {
    int a = 0,b = 1;

    switch (b) { case 1: a = 2; default: a += 1; }
    if (a == 3)
        printf("***** \n");
    ;switch (b) { case 2: a = 1; default: a += 2; }
    if (a == 5)
        printf("***** \n");
  }
  {signed int b = 1;
    signed int a = -1;

    if (a == -1)
        printf("***** \n");
    if (b == 1)
        printf("***** \n");
  }
  {typedef int b;
    typedef int a;
    a aa = 1;
    b bb = 2;

    if (aa == 1)
        printf("***** \n");
    if (bb == 2)
        printf("***** \n");
  }
  {
    int a,b = 1;

    switch (b) { case 1: a = 1; break; default: a = 2; }
    if (a== 1)
        printf("***** \n");
    switch(b){case 2:a=3;break;default: a=4;}
    if (a == 4)
        printf("***** \n");
  }
printf("* \n");
printf("* \n");
  {extern int exb;
    extern int exa;

    if (exa == 1)
        printf("***** \n");
    if (exb == 2)
        printf("***** \n");
  }

printf("* \n");
printf("* \n");
  {
    unsigned int a; int b = 1;

    a = ( unsigned int ) b;
    if (a == 1)
        printf("***** \n");
    a = (unsigned int)b;
    if (a == 1)
        printf("***** \n");
  }
  {register int b = 2;
    register int a = 1;

    if (a == 1)
        printf("***** \n");
    if (b == 2)
        printf("***** \n");
  }
  {
    int a = 1,b = 1;

    while ( a < 5 ) { if ( a == 3 ) { a = 10; continue; } a++; }
    if (a == 10)
        printf("***** \n");
    while ( b < 3 ) { if ( b == 3 ) { b = 10; continue; } b++; }
    if (b == 3)
        printf("***** \n");
  }
  {
    if (dxa == 3)
        printf("***** \n");
    if (dxb == 4)
        printf("***** \n");
  }

printf("* \n");
printf("* \n");
  {volatile int b = 2;
    volatile int a = 1;

    if (a == 1)
        printf("***** \n");
    if (b == 2)
        printf("***** \n");
  }
  printf("********** \n");
}

int f1() { return 1; }
int f2(){return 2;}
