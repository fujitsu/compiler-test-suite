#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    struct sttag1 { int a; int b; } st1[2][2] =
        { 1,2,3,4,5,6,7,8 };

    if (st1[1][0].b == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag1 { int a; int b; } un1[2][2] =
        { 1,4,6,7 };

    if (un1[0][0].a == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag1 { emem1, emem2  } en1[2][2] =
        { 1,1,0,1 };

    if (en1[0][1] == emem2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct sttag2 { int a; int b; } volatile st2[2][2] =
        { 1,2,3,4,5,6,7,8 };

    if (st2[0][1].a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag2 { int a; int b; } volatile un2[2][2] =
        { 2,3,5,9 };

    if (un2[1][1].b == 9)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag2 { emem3, emem4  } volatile en2[2][2] =
        { 0,1,1,0 };

    if (en2[0][1] == emem4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct sttag3 { int a; int b; } const st3[2][2] =
        { 1,2,3,4,5,6,7,8 };

    if (st3[1][0].b == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag3 { int a; int b; } const un3[2][2] =
        { 4,5,8,3 };

    if (un3[1][1].a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag3 { emem5, emem6  } const en3[2][2] =
        { 1,1,0,0 };

    if (en3[0][1] == emem6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct sttag4 { int a; int b; } typedef tyst[2][2];
    tyst st4 = { 1,2,3,4,5,6,7,8 };

    if (st4[0][1].a == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union  untag4 { int a; int b; } typedef tyun[2][2];
    tyun un4 = { 3,8,2,5 };

    if (un4[1][0].a == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum   entag4 { emem7, emem8  } typedef tyen[2][2];
    tyen en4 = { 0,0,0,1 };

    if (en4[1][0] == emem7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}