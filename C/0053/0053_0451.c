#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    int a,b = 2;

    if (b == 2) a = 1; else a = 3;
    if (a == 1)
        printf("***** \n");
    ;if (b != 2) a = 1; else a = 3;
    if (a == 3)
        printf("***** \n");
  }
  {
    int a = 0,b = 2;

    do a++; while (b != 2);
    if (a == 1)
        printf("***** \n");
    ;do a++; while (b != 2);
    if (a == 2)
        printf("***** \n");
  }
  {
    int a; signed char b = -1;

    a = ( int ) b;
    if (a == -1)
        printf("***** \n");
    a = (int) b;
    if (a == -1)
        printf("***** \n");
  }
  {
    int a,b = 0;

    for ( a = 0; a < 5; a++ ) b += 2;
    if (b == 10)
        printf("***** \n");
    ;for ( a = 0; a < 5; a++ ) b += 4;
    if (b == 30)
        printf("***** \n");
  }
  {
    int a = 1;

#if !defined(__i386) && !defined(__x86_64__)
    asm("  nop  ");
#endif
    if (a == 1)
        printf("***** \n");
#if !defined(__i386) && !defined(__x86_64__)
    ;asm("  nop  ");
#endif
    if (a == 1)
        printf("***** \n");
  }
  {
    char a; int b = 1;

    a = ( char ) b;
    if (a == 1)
        printf("***** \n");
    a=(char)b;
    if (a == 1)
        printf("***** \n");
  }
  {
    long int a; short int b = -1;

    a = ( long int ) b;
    if (a == -1)
        printf("***** \n");
    a=(long int)b;
    if (a == -1)
        printf("***** \n");
  }
  {auto int b;
    auto int a;

    a = 2;
    if (a == 2)
        printf("***** \n");
    b=6;
    if (b == 6)
        printf("***** \n");
  }
  {enum { en1=10,en2 } e2;
    enum { em1,em2=10 } e1;

    e1 = em1;
    if (e1== 0)
        printf("***** \n");
    e2 = en2;
    if (e2 == 11)
        printf("***** \n");
  }
  {
    int a,b,c = 1;

    a = 1;
    if (c == 1) goto label1;
    a = 3;
  label1:
    if (a == 1)
        printf("***** \n");
    b = 2;
    if (c == 2) goto label2;
    b = 4;
  label2:
    if (b == 4)
        printf("***** \n");
  }
  {
    int a,b = 0;

    if (b == 0) a = 1; else a = 2;
    if (a == 1)
        printf("***** \n");
    if (b == 2) a = 3;else a = 4;
    if (a == 4)
        printf("***** \n");
  }
  {
    int a,b = 2;

    switch(b) { case 2: a = 1; break; default: a = 2; }
    if (a == 1)
        printf("***** \n");
    switch(b) {case 1: a = 1; break; default: a = 2; }
    if (a == 2)
        printf("***** \n");
  }
  {
    {
      int a,f( void );

      a = f();
      if (a == 1)
          printf("***** \n");
        else
          printf("***** \n");
    }
    {
      int a,f(void);

      a = f();
      if (a == 1)
          printf("***** \n");
        else
          printf("***** \n");
    }
  }
  {
    short int a; long int b = 1;

    a = ( short int ) b;
    if (a == 1)
        printf("***** \n");
    a=(short int) b;
    if (a == 1)
        printf("***** \n");
  }
  {static union { int a; int b; } u2;
    static union { int a; int b; } u1;

    u1.a = 1;
    if (u1.b == 1)
        printf("***** \n");
    u2.b = 2;
    if (u2.a == 2)
        printf("***** \n");
  }
  {
    int a = 1;

    for (;;) if (a <= 5) a++; else { a = 0; break; }
    if (a == 0)
        printf("***** \n");
    for (;;) if (a <= 5) a++; else { a = 0;break; }
    if (a == 0)
        printf("***** \n");
  }
  {
    int a = 1;

    while (a < 5) a++;
    if (a == 5)
        printf("***** \n");
    while (a > 0) a--;
    if (a == 0)
        printf("***** \n");
  }
  {const int b = 2;
    const int a = 1;

    if (a == 1)
        printf("***** \n");
    if (b == 2)
        printf("***** \n");
  }
  printf("********** \n");
}

int f() { return 1; }
