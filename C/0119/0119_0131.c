#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#include <string.h>

struct tag2 {
  int  i4_1;
  char u1_1;
  };
struct tag3 {
  struct tag1 *st_1;
  struct tag2 *st_2;
  struct tag3 *st_3;
  struct tag2  st_4;
  };
struct tag1 {
  short int              i2_1;
  unsigned char          u1_1;
  int                    i4_1;
  struct      { 
    unsigned short int     u2_2;
    signed char            i1_2;
    unsigned int           u4_2;
    struct      { 
      double                 f8_3;
      float                  f4_3;
        long double            f16_3;
        struct      { 
	  char                   u1_4[10];
          int                    i4_4[3];
          struct      { 
	    char                   u1_5[10];
            struct tag2            tg6;
            }tg5;
          }tg4;
        }tg3;
      }tg2;
    };

  struct tag1 tg1_1={ 
     -32768,'A', 0x19891212,
    { 0xabcd,-128,420653,
      {534.420653,559.231900,3.2002222,
        {"SCPIN13.",
	  {1,2,3},
          {"123456789",
	    {-32768,'a'}
    	    }
 	  }
        }
      }
    };
  struct tag2 tg2_1[3]={{1,'A'},{2,'B'},{3,'C'}};
  struct tag3 tg3_1={&tg1_1,&tg2_1[1],&tg3_1,{0xabc,'z'}
  };
int main()
{ char c;
 printf("* TP=SCPIN13 ENTERED *\n");
 if(tg1_1.i2_1==-32768)
                                  printf(" ** SCPIN13.02 OK **\n");
                             else printf(" ** SCPIN13.02 NG **\n");
 if(tg1_1.u1_1=='A')
                                  printf(" ** SCPIN13.03 OK **\n");
                             else printf(" ** SCPIN13.03 NG **\n");
 if(tg1_1.i4_1==0x19891212)
                                  printf(" ** SCPIN13.04 OK **\n");
                             else printf(" ** SCPIN13.04 NG **\n");
 if(tg1_1.tg2.u2_2==0xabcd)
                                  printf(" ** SCPIN13.06 OK **\n");
                             else printf(" ** SCPIN13.06 NG **\n");
 if(tg1_1.tg2.i1_2==-128)
                                  printf(" ** SCPIN13.07 OK **\n");
                             else printf(" ** SCPIN13.07 NG **\n");
 if(tg1_1.tg2.u4_2==420653)
                                  printf(" ** SCPIN13.08 OK **\n");
                             else printf(" ** SCPIN13.08 NG **\n");
 if(tg1_1.tg2.tg3.f8_3 ==534.420653)
                                  printf(" ** SCPIN13.09 OK **\n");
                             else printf(" ** SCPIN13.09 NG **\n");
 if(tg1_1.tg2.tg3.f4_3 ==(float)559.231900)
                                  printf(" ** SCPIN13.10 OK **\n");
                             else printf(" ** SCPIN13.10 NG **\n");
 if(tg1_1.tg2.tg3.f16_3==3.2002222)
                                  printf(" ** SCPIN13.11 OK **\n");
                             else printf(" ** SCPIN13.11 NG **\n");
 if(strcmp(tg1_1.tg2.tg3.tg4.u1_4,"SCPIN13.")==0)
                                  printf(" ** SCPIN13.12 OK **\n");
                             else printf(" ** SCPIN13.12 NG **\n");
 if(tg1_1.tg2.tg3.tg4.i4_4[0]==1)
                                  printf(" ** SCPIN13.13 OK **\n");
                             else printf(" ** SCPIN13.13 NG **\n");
 if(tg1_1.tg2.tg3.tg4.i4_4[1]+tg1_1.tg2.tg3.tg4.i4_4[2]==5)
                                  printf(" ** SCPIN13.14 OK **\n");
                             else printf(" ** SCPIN13.14 NG **\n");
 if(strcmp(tg1_1.tg2.tg3.tg4.tg5.u1_5,"123456789")==0)
                                  printf(" ** SCPIN13.15 OK **\n");
                             else printf(" ** SCPIN13.15 NG **\n");
 if(tg1_1.tg2.tg3.tg4.tg5.tg6.i4_1==-32768)
                                  printf(" ** SCPIN13.16 OK **\n");
                             else printf(" ** SCPIN13.16 NG **\n");
 if(tg1_1.tg2.tg3.tg4.tg5.tg6.u1_1=='a')
                                  printf(" ** SCPIN13.17 OK **\n");
                             else printf(" ** SCPIN13.17 NG **\n");
 if(tg2_1[0].i4_1==1 && tg2_1[0].u1_1=='A')
                                  printf(" ** SCPIN13.18 OK **\n");
                             else printf(" ** SCPIN13.18 NG **\n");
 if(tg2_1[1].i4_1==2 && tg2_1[1].u1_1=='B')
                                  printf(" ** SCPIN13.19 OK **\n");
                             else printf(" ** SCPIN13.19 NG **\n");
 if(tg2_1[2].i4_1==3 && tg2_1[2].u1_1=='C')
                                  printf(" ** SCPIN13.20 OK **\n");
                             else printf(" ** SCPIN13.20 NG **\n");
 if(tg3_1.st_1==&tg1_1)
                                  printf(" ** SCPIN13.21 OK **\n");
                             else printf(" ** SCPIN13.21 NG **\n");
 if(tg3_1.st_2==&tg2_1[1])
                                  printf(" ** SCPIN13.22 OK **\n");
                             else printf(" ** SCPIN13.22 NG **\n");
 if(tg3_1.st_3==&tg3_1)
                                  printf(" ** SCPIN13.23 OK **\n");
                             else printf(" ** SCPIN13.23 NG **\n");
 if(tg3_1.st_4.i4_1==0xabc)
                                  printf(" ** SCPIN13.24 OK **\n");
                             else printf(" ** SCPIN13.24 NG **\n");
 if(tg3_1.st_4.u1_1=='z')
                                  printf(" ** SCPIN13.25 OK **\n");
                             else printf(" ** SCPIN13.25 NG **\n");
 if(strcmp(tg3_1.st_1->tg2.tg3.tg4.u1_4,"SCPIN13.")==0)
                                  printf(" ** SCPIN13.27 OK **\n");
                             else printf(" ** SCPIN13.27 NG **\n");
 if((c=tg3_1.st_2->u1_1)=='B')
                                  printf(" ** SCPIN13.28 OK **\n");
                             else printf(" ** SCPIN13.28 NG **\n");
 if(tg3_1.st_3->st_4.i4_1==0xabc)
                                  printf(" ** SCPIN13.29 OK **\n");
                             else printf(" ** SCPIN13.29 NG **\n");
 if(tg3_1.st_3->st_4.u1_1==tg3_1.st_4.u1_1)
                                  printf(" ** SCPIN13.30 OK **\n");
                             else printf(" ** SCPIN13.30 NG **\n");
 if(  &(tg3_1.st_3->st_3->st_3->st_3->st_3->st_3->st_3->st_1->i4_1)
    ==&(tg3_1.st_3->st_1->i4_1)                              )
                                  printf(" ** SCPIN13.31 OK **\n");
                             else printf(" ** SCPIN13.31 NG **\n");
 printf("  * SCPIN13 ENDED *\n\n");
exit (0);
}
