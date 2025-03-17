#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct {
    struct sttag1 { int a; int b; } st1;
    union  untag1 { int a; int b; } un1;
    enum   entag1 { emem1, emem2  } en1;
    struct sttag2 { int a; int b; } st2[2][2];
    union  untag2 { int a; int b; } un2[2][2];
    enum   entag2 { emem3, emem4  } en2[2][2];
    struct sttag3 { int a; int b; } st3[2][2][2];
    union  untag3 { int a; int b; } un3[2][2][2];
    enum   entag3 { emem5, emem6  } en3[2][2][2];
    struct sttag4 { int a; int b; } *st4,pst4;
    union  untag4 { int a; int b; } *un4,pun4;
    enum   entag4 { emem7, emem8  } *en4,pen4;
} ss =
    { { 1,2 },
       { 3 },
       1,
       {  4,5, 6,7, 9,0, 1,2 },
       {  3, 4, 5, 6 },
       { 0,1,0,1 },
       { {7,8, 9,0,1,2,3,4},
          {5,6,7,8,9,0,1,2} },
       { {3,4,5,6},{7,8,9,0} },
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
    if (ss.st2[1][0].b == 0)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    if (ss.un2[0][1].a == 4)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    if (ss.en2[0][0] == emem3)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    if (ss.st3[1][0][1].a == 7)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    if (ss.un3[0][1][1].b == 6)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    if (ss.en3[1][1][0] == emem6)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    ss.pst4.b = 2;
    ss.st4 = &ss.pst4;
 
    if ((*ss.st4).b == 2)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    ss.pun4.b = 3;
    ss.un4 = &ss.pun4;
 
    if ((*ss.un4).a == 3)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    ss.pen4 = emem8;
    ss.en4 = &ss.pen4;
 
    if (*ss.en4 == emem8)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
