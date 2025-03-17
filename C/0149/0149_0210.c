#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    struct sttag1 { int a; int b; } static st1 = { 1,2 };
 
    if (st1.b == 2)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    union  untag1 { int a; int b; } static un1 = { 3 };
 
    if (un1.a == 3)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    enum   entag1 { emem1, emem2  } static en1 = 1;
 
    if (en1 == emem2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    static struct sttag2 { int a; int b; } volatile st2 = { 4,5 };
 
    if (st2.a == 4)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    static union  untag2 { int a; int b; } volatile un2 = { 6 };
 
    if (un2.b == 6)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    static enum   entag2 { emem3, emem4  } volatile en2 = 0;
 
    if (en2 == emem3)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    static struct sttag3 { int a; int b; } const st3 = { 7,8 };
 
    if (st3.b == 8)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    static union  untag3 { int a; int b; } const un3 = { 9 };
 
    if (un3.a == 9)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    static enum   entag3 { emem5, emem6  } const en3 = 0;
 
    if (en3 == emem5)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    struct sttag4 { int a; int b; } typedef tyst;
    static tyst st4 = { 0,1 };
 
    if (st4.a == 0)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    union  untag4 { int a; int b; } typedef tyun;
    static tyun un4 = { 2 };
 
    if (un4.a == 2)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    enum   entag4 { emem7, emem8  } typedef tyen;
    static tyen en4 = 0;
 
    if (en4 == emem7)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
