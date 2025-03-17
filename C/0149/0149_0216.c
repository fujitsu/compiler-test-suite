#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct sttag1 *ost1;
union  untag1 *oun1;
struct sttag2 *ost2;
union  untag2 *oun2;
struct sttag3 *ost3;
union  untag3 *oun3;
struct sttag4 *ost4;
union  untag4 *oun4;
struct {
    struct sttag1 { int a; int b; } st1;
    union  untag1 { int a; int b; } un1;
    struct sttag2 { int a; int b; } st2[2][2];
    union  untag2 { int a; int b; } un2[2][2];
    struct sttag3 { int a; int b; } st3[2][2][2];
    union  untag3 { int a; int b; } un3[2][2][2];
    struct sttag4 { int a; int b; } *st4;
    union  untag4 { int a; int b; } *un4;
} ss =
    { { 1,2 },
       { 3 },
       { 4,5,6,7,8,9,0,1 },
       { 2,3,4,5 },
       { 7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2 },
       { 3,4,5,6,7,8,9,0 },
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
    if (ss.st2[1][0].b == 9)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    if (ss.un2[0][1].a == 3)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    if (ss.st3[1][0][1].a == 7)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    if (ss.un3[0][1][1].b == 6)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    struct sttag4 ast4;
    ast4.b = 2;
    ss.st4 = &ast4;
 
    if ((*ss.st4).b == 2)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    union untag4 aun4;
    aun4.b = 3;
    ss.un4 = &aun4;
 
    if ((*ss.un4).a == 3)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
