#include<stdio.h>
struct sttag1 *ost1;
union  untag1 *oun1;
struct sttag2 *ost2;
union  untag2 *oun2;
struct sttag3 *ost3;
union  untag3 *oun3;
struct sttag4 *ost4;
union  untag4 *oun4;
struct sttag5 *ost5;
union  untag5 *oun5;
struct sttag6 *ost6;
union  untag6 *oun6;
struct sttag7 *ost7;
union  untag7 *oun7;
struct sttag8 *ost8;
union  untag8 *oun8;

struct {
    struct sttag1 { int a; int b; } volatile st1;
    union  untag1 { int a; int b; } volatile un1;
    struct sttag2 { int a; int b; } const st2;
    union  untag2 { int a; int b; } const un2;
    struct sttag3 { int a; int b; } volatile st3[2][2];
    union  untag3 { int a; int b; } volatile un3[2][2];
    struct sttag4 { int a; int b; } const st4[2][2];
    union  untag4 { int a; int b; } const un4[2][2];
    struct sttag5 { int a; int b; } volatile st5[2][2][2];
    union  untag5 { int a; int b; } volatile un5[2][2][2];
    struct sttag6 { int a; int b; } const st6[2][2][2];
    union  untag6 { int a; int b; } const un6[2][2][2];
    struct sttag7 { int a; int b; } volatile *st7,pst7;
    union  untag7 { int a; int b; } volatile *un7,pun7;
    struct sttag8 { int a; int b; } const *st8,pst8;
    union  untag8 { int a; int b; } const *un8,pun8;
} ss =
    { { 1,2 },
       { 3 },
       { 1,2 },
       { 3 },
       { 4,5,6,7 },
       { 3,4 },
       { 4,5,6,7 },
       { 3,4 },
       { 7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2 },
       { 3,4,5,6,7,8,9,0 },
       { 7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2 },
       { 3,4,5,6,7,8,9,0 },
    };
int main()
{
  printf("********** \n");
  {
    if (ss.st1.a == 1)
        printf("***** \n");
  }
  {
    if (ss.un1.b == 3)
        printf("***** \n");
  }
  {
    if (ss.st2.a == 1)
        printf("***** \n");
  }
  {
    if (ss.un2.b == 3)
        printf("***** \n");
  }
  {
    if (ss.st3[1][0].b == 0)
        printf("***** \n");
  }
  {
    if (ss.un3[0][1].a == 4)
        printf("***** \n");
  }
  {
    if (ss.st4[1][0].b == 0)
        printf("***** \n");
  }
  {
    if (ss.un4[0][1].a == 4)
        printf("***** \n");
  }
  {
    if (ss.st5[1][0][1].a == 7)
        printf("***** \n");
  }
  {
    if (ss.un5[0][1][1].b == 6)
        printf("***** \n");
  }
  {
    if (ss.st6[1][0][1].a == 7)
        printf("***** \n");
  }
  {
    if (ss.un6[0][1][1].b == 6)
        printf("***** \n");
  }
  {
    ss.pst7.b = 2;
    ss.st7 = &ss.pst7;

    if ((*ss.st7).b == 2)
        printf("***** \n");
  }
  {
    ss.pun7.b = 3;
    ss.un7 = &ss.pun7;

    if ((*ss.un7).a == 3)
        printf("***** \n");
  }
  {
    ss.st8 = &ss.pst8;

    if ((*ss.st8).b == 0)
        printf("***** \n");
  }
  {
    ss.un8 = &ss.pun8;

    if ((*ss.un8).a == 0)
        printf("***** \n");
  }
  printf("********** \n");
}
