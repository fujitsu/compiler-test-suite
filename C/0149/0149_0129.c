#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    struct sttag1 { int a; int b; } st1 = { 1,2 };
 
    if (st1.a == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    union  untag1 { int a; int b; } un1 = { 3 };
 
    if (un1.b == 3)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    enum   entag1 { emem1, emem2  } en1 = 0;
 
    if (en1 == emem1)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    struct sttag2 { int a; int b; } ;
    struct sttag2 st2 = { 4,5 };
 
    if (st2.b == 5)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    union  untag2 { int a; int b; } ;
    union  untag2 un2 = { 6 };
 
    if (un2.a == 6)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    enum   entag2 { emem3, emem4  } ;
    enum   entag2 en2 = 1;
 
    if (en2 = emem4)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    struct sttag3 { int a; int b; } st3[2][2] =
        { 0,1,2,3,4,5,6,7 };
 
    if (st3[1][0].a = 4)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    union  untag3 { int a; int b; } un3[2][2] =
        { 0,1,2,3 };
 
    if (un3[0][1].b = 1)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    enum   entag3 { emem5, emem6  } en3[2][2] = { 0,1,0,1 };
 
    if (en3[1][1] = emem6)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    struct sttag4 { int a; int b; } st4[2][2][2] =
        { 0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5 };
 
    if (st4[1][1][1].b = 5)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    union  untag4 { int a; int b; } un4[2][2][2] =
        { 0,1,2,3,0,1,2,3 };
 
    if (un4[0][0][1].a = 1)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    enum   entag4 { emem7, emem8  } en4[2][2][2] =
        { 0,1,0,1,0,1,0,1 };
 
    if (en4[1][0][1] = emem8)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    struct sttag5 { int a; int b; } *st5,st6 = { 1,2 };
    st5 = &st6;
 
    if ((*st5).b = 2)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    union  untag5 { int a; int b; } *un5,un6 = { 3 };
    un5 = &un6;
 
    if ((*un5).a = 3)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    enum   entag5 { emem9, emem0  } *en5,en6 = 1;
    en5 = &en6;
 
    if (*en5 = emem0)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
