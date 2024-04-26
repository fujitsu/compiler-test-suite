#include <stdio.h>
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
    /* 0xfedcba9876543210LL,*/ -32768,'A', 0x19891212,
    {/* -542862917, */0xabcd,-128,420653,
      {534.420653,559.231900,3.2002222,
        {"TEST.",
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
 printf("* ENTERED *\n");

 if(tg1_1.i2_1==-32768)
                                  printf(" ** TEST.02 OK **\n");
                             else printf(" ** TEST.02 NG **\n");
 if(tg1_1.u1_1=='A')
                                  printf(" ** TEST.03 OK **\n");
                             else printf(" ** TEST.03 NG **\n");
 if(tg1_1.i4_1==0x19891212)
                                  printf(" ** TEST.04 OK **\n");
                             else printf(" ** TEST.04 NG **\n");

 if(tg1_1.tg2.u2_2==0xabcd)
                                  printf(" ** TEST.06 OK **\n");
                             else printf(" ** TEST.06 NG **\n");
 if(tg1_1.tg2.i1_2==-128)
                                  printf(" ** TEST.07 OK **\n");
                             else printf(" ** TEST.07 NG **\n");
 if(tg1_1.tg2.u4_2==420653)
                                  printf(" ** TEST.08 OK **\n");
                             else printf(" ** TEST.08 NG **\n");
 if(tg1_1.tg2.tg3.f8_3 ==534.420653)
                                  printf(" ** TEST.09 OK **\n");
                             else printf(" ** TEST.09 NG **\n");
 if(tg1_1.tg2.tg3.f4_3 ==(float)559.231900)
                                  printf(" ** TEST.10 OK **\n");
                             else printf(" ** TEST.10 NG **\n");
 if(tg1_1.tg2.tg3.f16_3==3.2002222)
                                  printf(" ** TEST.11 OK **\n");
                             else printf(" ** TEST.11 NG **\n");
 if(strcmp(tg1_1.tg2.tg3.tg4.u1_4,"TEST.")==0)
                                  printf(" ** TEST.12 OK **\n");
                             else printf(" ** TEST.12 NG **\n");
 if(tg1_1.tg2.tg3.tg4.i4_4[0]==1)
                                  printf(" ** TEST.13 OK **\n");
                             else printf(" ** TEST.13 NG **\n");
 if(tg1_1.tg2.tg3.tg4.i4_4[1]+tg1_1.tg2.tg3.tg4.i4_4[2]==5)
                                  printf(" ** TEST.14 OK **\n");
                             else printf(" ** TEST.14 NG **\n");
 if(strcmp(tg1_1.tg2.tg3.tg4.tg5.u1_5,"123456789")==0)
                                  printf(" ** TEST.15 OK **\n");
                             else printf(" ** TEST.15 NG **\n");
 if(tg1_1.tg2.tg3.tg4.tg5.tg6.i4_1==-32768)
                                  printf(" ** TEST.16 OK **\n");
                             else printf(" ** TEST.16 NG **\n");
 if(tg1_1.tg2.tg3.tg4.tg5.tg6.u1_1=='a')
                                  printf(" ** TEST.17 OK **\n");
                             else printf(" ** TEST.17 NG **\n");
 if(tg2_1[0].i4_1==1 && tg2_1[0].u1_1=='A')
                                  printf(" ** TEST.18 OK **\n");
                             else printf(" ** TEST.18 NG **\n");
 if(tg2_1[1].i4_1==2 && tg2_1[1].u1_1=='B')
                                  printf(" ** TEST.19 OK **\n");
                             else printf(" ** TEST.19 NG **\n");
 if(tg2_1[2].i4_1==3 && tg2_1[2].u1_1=='C')
                                  printf(" ** TEST.20 OK **\n");
                             else printf(" ** TEST.20 NG **\n");
 if(tg3_1.st_1==&tg1_1)
                                  printf(" ** TEST.21 OK **\n");
                             else printf(" ** TEST.21 NG **\n");
 if(tg3_1.st_2==&tg2_1[1])
                                  printf(" ** TEST.22 OK **\n");
                             else printf(" ** TEST.22 NG **\n");
 if(tg3_1.st_3==&tg3_1)
                                  printf(" ** TEST.23 OK **\n");
                             else printf(" ** TEST.23 NG **\n");
 if(tg3_1.st_4.i4_1==0xabc)
                                  printf(" ** TEST.24 OK **\n");
                             else printf(" ** TEST.24 NG **\n");
 if(tg3_1.st_4.u1_1=='z')
                                  printf(" ** TEST.25 OK **\n");
                             else printf(" ** TEST.25 NG **\n");

 if(strcmp(tg3_1.st_1->tg2.tg3.tg4.u1_4,"TEST.")==0)
                                  printf(" ** TEST.27 OK **\n");
                             else printf(" ** TEST.27 NG **\n");
 if((c=tg3_1.st_2->u1_1)=='B')
                                  printf(" ** TEST.28 OK **\n");
                             else printf(" ** TEST.28 NG **\n");
 if(tg3_1.st_3->st_4.i4_1==0xabc)
                                  printf(" ** TEST.29 OK **\n");
                             else printf(" ** TEST.29 NG **\n");
 if(tg3_1.st_3->st_4.u1_1==tg3_1.st_4.u1_1)
                                  printf(" ** TEST.30 OK **\n");
                             else printf(" ** TEST.30 NG **\n");
 if(  &(tg3_1.st_3->st_3->st_3->st_3->st_3->st_3->st_3->st_1->i4_1)
    ==&(tg3_1.st_3->st_1->i4_1)                              )
                                  printf(" ** TEST.31 OK **\n");
                             else printf(" ** TEST.31 NG **\n");
 printf("  * TEST ENDED *\n\n");
}
