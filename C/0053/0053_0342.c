#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    struct sttag1 { int a; int b; } st1 = { 1,2 };

    if (st1.b == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag1 { int a; int b; } un1 = { 3 };

    if (un1.a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag1 { emem1, emem2  } en1 = 1;

    if (en1 == emem2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct sttag2 { int a; int b; } volatile st2 = { 4,5 };

    if (st2.a == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag2 { int a; int b; } volatile un2 = { 6 };

    if (un2.b == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag2 { emem3, emem4  } volatile en2 = 0;

    if (en2 == emem3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct sttag3 { int a; int b; } const st3 = { 7,8 };

    if (st3.a == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag3 { int a; int b; } const un3 = { 9 };

    if (un3.a == 9)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag3 { emem5, emem6  } const en3 = 0;

    if (en3 == emem5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct sttag4 { int a; int b; } typedef tyst;
    tyst st4 = { 0,1 };

    if (st4.a == 0)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag4 { int a; int b; } typedef tyun;
    tyun un4 = { 2 };

    if (un4.a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag4 { emem7, emem8  } typedef tyen;
    tyen en4 = 0;

    if (en4 == emem7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}
