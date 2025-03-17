#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct {
    struct sttag1 { int a; int b; } volatile st1;
    union  untag1 { int a; int b; } volatile un1;
    enum   entag1 { emem1, emem2  } volatile en1;
    struct sttag2 { int a; int b; } const st2;
    union  untag2 { int a; int b; } const un2;
    enum   entag2 { emem3, emem4  } const en2;
    struct sttag3 { int a; int b; } volatile st3[2][2];
    union  untag3 { int a; int b; } volatile un3[2][2];
    enum   entag3 { emem5, emem6  } volatile en3[2][2];
    struct sttag4 { int a; int b; } const st4[2][2];
    union  untag4 { int a; int b; } const un4[2][2];
    enum   entag4 { emem7, emem8  } const en4[2][2];
    struct sttag5 { int a; int b; } volatile st5[2][2][2];
    union  untag5 { int a; int b; } volatile un5[2][2][2];
    enum   entag5 { emem9, emema  } volatile en5[2][2][2];
    struct sttag6 { int a; int b; } const st6[2][2][2];
    union  untag6 { int a; int b; } const un6[2][2][2];
    enum   entag6 { ememb, ememc  } const en6[2][2][2];
    struct sttag7 { int a; int b; } volatile *st7,pst7;
    union  untag7 { int a; int b; } volatile *un7,pun7;
    enum   entag7 { ememd, ememe  } volatile *en7,pen7;
    struct sttag8 { int a; int b; } const *st8,pst8;
    union  untag8 { int a; int b; } const *un8,pun8;
    enum   entag8 { ememf, emem0  } const *en8,pen8;
} ss =
    { { 1,2 },
       { 3 },
       1,
       { 1,2 },
       { 3 },
       1,
       { 4,5,6,7 },
       { 3,4 },
       { 0,1 },
       { 4,5,6,7 },
       { 3,4 },
       { 0,1 },
       { 7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2 },
       { 3,4,5,6,7,8,9,0 },
       { 1,0,1,0,1,0,1,0 },
       { 7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2 },
       { 3,4,5,6,7,8,9,0 },
       { 1,0,1,0,1,0,1,0 },
    };
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    if (ss.st1.a == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    if (ss.un1.b == 3)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    if (ss.en1 == emem2)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    if (ss.st2.a == 1)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    if (ss.un2.b == 3)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    if (ss.en2 == emem4)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    if (ss.st3[1][0].b == 0)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    if (ss.un3[0][1].a == 4)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    if (ss.en3[0][0] == emem5)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    if (ss.st4[1][0].b == 0)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    if (ss.un4[0][1].a == 4)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    if (ss.en4[0][0] == emem7)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    if (ss.st5[1][0][1].a == 7)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    if (ss.un5[0][1][1].b == 6)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    if (ss.en5[1][1][0] == emema)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    if (ss.st6[1][0][1].a == 7)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    if (ss.un6[0][1][1].b == 6)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    if (ss.en6[1][1][0] == ememc)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  {
    ss.pst7.b = 2;
    ss.st7 = &ss.pst7;
 
    if ((*ss.st7).b == 2)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
  }
  {
    ss.pun7.b = 3;
    ss.un7 = &ss.pun7;
 
    if ((*ss.un7).a == 3)
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  {
    ss.pen7 = ememe;
    ss.en7 = &ss.pen7;
 
    if (*ss.en7 == ememe)
        printf("***** CATEGORY - 21 ***** O K *****\n");
      else
        printf("***** CATEGORY - 21 ***** N G *****\n");
  }
  {
    ss.st8 = &ss.pst8;
 
    if ((*ss.st8).b == 0)
        printf("***** CATEGORY - 22 ***** O K *****\n");
      else
        printf("***** CATEGORY - 22 ***** N G *****\n");
  }
  {
    ss.un8 = &ss.pun8;
 
    if ((*ss.un8).a == 0)
        printf("***** CATEGORY - 23 ***** O K *****\n");
      else
        printf("***** CATEGORY - 23 ***** N G *****\n");
  }
  {
    ss.en8 = &ss.pen8;
 
    if (*ss.en8 == 0)
        printf("***** CATEGORY - 24 ***** O K *****\n");
      else
        printf("***** CATEGORY - 24 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
