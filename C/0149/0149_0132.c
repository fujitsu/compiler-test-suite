#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    struct sttag1 { int a; int b; } st1[2][2][2] =
        { 1,2,3,4,5,6,7,8,8,7,6,5,4,3,2,1 };
 
    if (st1[1][1][0].a == 4)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    union  untag1 { int a; int b; } un1[2][2][2] =
        { 1,4,6,7,2,3,5,9 };
 
    if (un1[0][1][0].b == 6)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    enum   entag1 { emem1, emem2  } en1[2][2][2] =
        { 1,1,0,1,1,1,0,0 };
 
    if (en1[0][1][1] == emem2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    struct sttag2 { int a; int b; } volatile st2[2][2][2] =
        { 1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8 };
 
    if (st2[0][0][1].b == 4)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    union  untag2 { int a; int b; } volatile un2[2][2][2] =
        { 2,3,5,9,1,4,7,6 };
 
    if (un2[1][0][1].a == 4)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    enum   entag2 { emem3, emem4  } volatile en2[2][2][2] =
        { 0,1,1,0,0,0,1,1 };
 
    if (en2[0][1][1] == emem3)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    struct sttag3 { int a; int b; } const st3[2][2][2] =
        { 1,2,3,4,5,6,7,8,3,5,6,9,1,7,2,4 };
 
    if (st3[1][1][0].a == 1)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    union  untag3 { int a; int b; } const un3[2][2][2] =
        { 4,5,8,3,2,9,7,1 };
 
    if (un3[1][0][1].a == 9)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    enum   entag3 { emem5, emem6  } const en3[2][2][2] =
        { 1,1,0,0,1,0,1,0 };
 
    if (en3[0][0][1] == emem6)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    struct sttag4 { int a; int b; } typedef tyst[2][2][2];
    tyst st4 = { 1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8 };
 
    if (st4[0][1][1].b == 8)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    union  untag4 { int a; int b; } typedef tyun[2][2][2];
    tyun un4 = { 3,8,2,5,5,4,8,9 };
 
    if (un4[1][0][0].a == 5)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    enum   entag4 { emem7, emem8  } typedef tyen[2][2][2];
    tyen en4 = { 0,0,0,1,0,0,1,1 };
 
    if (en4[1][1][0] == emem8)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
