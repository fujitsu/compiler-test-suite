#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    struct sttag1 { int a; int b; } *st1,st11 = { 1,2 };
    st1 = &st11;
 
    if ((*st1).b == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    union  untag1 { int a; int b; } *un1,un11 = { 3 };
    un1 = &un11;
 
    if ((*un1).a == 3)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    enum   entag1 { emem1, emem2  } *en1,en11 = 1;
    en1 = &en11;
 
    if (*en1 == emem2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    struct sttag2 { int a; int b; } volatile *st2,st22 = { 4,5 };
    st2 = &st22;
 
    if ((*st2).a == 4)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    union  untag2 { int a; int b; } volatile *un2,un22 = { 6 };
    un2 = &un22;
 
    if ((*un2).b == 6)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    enum   entag2 { emem3, emem4  } volatile *en2,en22 = 0;
    en2 = &en22;
 
    if (*en2 == emem3)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    struct sttag3 { int a; int b; } const *st3,st33 = { 7,8 };
    st3 = &st33;
 
    if ((*st3).a == 7)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    union  untag3 { int a; int b; } const *un3,un33 = { 9 };
    un3 = &un33;
 
    if ((*un3).a == 9)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    enum   entag3 { emem5, emem6  } const *en3,en33 = 0;
    en3 = &en33;
 
    if (*en3 == emem5)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    struct sttag4 { int a; int b; } typedef *tyst;
    struct sttag4 st44 = { 0,1 };
    tyst st4 = &st44;
 
    if ((*st4).a == 0)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    union  untag4 { int a; int b; } typedef *tyun;
    union untag4 un44 = { 2 };
    tyun un4 = &un44;
 
    if ((*un4).a == 2)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    enum   entag4 { emem7, emem8  } typedef *tyen;
    enum entag4 en44 = 0;
    tyen en4 = &en44;
 
    if (*en4 == emem7)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
