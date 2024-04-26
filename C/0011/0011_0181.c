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
#ifdef NO_LONG_DOUBLE
        double            f16_3;
#else
        long double            f16_3;
#endif
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
        {"",
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
                                  printf(" ** 02 OK **\n");
                             else printf(" ** 02 NG **\n");
 if(tg1_1.u1_1=='A')
                                  printf(" ** 03 OK **\n");
                             else printf(" ** 03 NG **\n");
 if(tg1_1.i4_1==0x19891212)
                                  printf(" ** 04 OK **\n");
                             else printf(" ** 04 NG **\n");
 
 if(tg1_1.tg2.u2_2==0xabcd)
                                  printf(" ** 06 OK **\n");
                             else printf(" ** 06 NG **\n");
 if(tg1_1.tg2.i1_2==-128)
                                  printf(" ** 07 OK **\n");
                             else printf(" ** 07 NG **\n");
 if(tg1_1.tg2.u4_2==420653)
                                  printf(" ** 08 OK **\n");
                             else printf(" ** 08 NG **\n");
 if(tg1_1.tg2.tg3.f8_3 ==534.420653)
                                  printf(" ** 09 OK **\n");
                             else printf(" ** 09 NG **\n");
 if(tg1_1.tg2.tg3.f4_3 ==(float)559.231900)
                                  printf(" ** 10 OK **\n");
                             else printf(" ** 10 NG **\n");
 if(tg1_1.tg2.tg3.f16_3==3.2002222)
                                  printf(" ** 11 OK **\n");
                             else printf(" ** 11 NG **\n");
 if(strcmp(tg1_1.tg2.tg3.tg4.u1_4,"")==0)
                                  printf(" ** 12 OK **\n");
                             else printf(" ** 12 NG **\n");
 if(tg1_1.tg2.tg3.tg4.i4_4[0]==1)
                                  printf(" ** 13 OK **\n");
                             else printf(" ** 13 NG **\n");
 if(tg1_1.tg2.tg3.tg4.i4_4[1]+tg1_1.tg2.tg3.tg4.i4_4[2]==5)
                                  printf(" ** 14 OK **\n");
                             else printf(" ** 14 NG **\n");
 if(strcmp(tg1_1.tg2.tg3.tg4.tg5.u1_5,"123456789")==0)
                                  printf(" ** 15 OK **\n");
                             else printf(" ** 15 NG **\n");
 if(tg1_1.tg2.tg3.tg4.tg5.tg6.i4_1==-32768)
                                  printf(" ** 16 OK **\n");
                             else printf(" ** 16 NG **\n");
 if(tg1_1.tg2.tg3.tg4.tg5.tg6.u1_1=='a')
                                  printf(" ** 17 OK **\n");
                             else printf(" ** 17 NG **\n");
 if(tg2_1[0].i4_1==1 && tg2_1[0].u1_1=='A')
                                  printf(" ** 18 OK **\n");
                             else printf(" ** 18 NG **\n");
 if(tg2_1[1].i4_1==2 && tg2_1[1].u1_1=='B')
                                  printf(" ** 19 OK **\n");
                             else printf(" ** 19 NG **\n");
 if(tg2_1[2].i4_1==3 && tg2_1[2].u1_1=='C')
                                  printf(" ** 20 OK **\n");
                             else printf(" ** 20 NG **\n");
 if(tg3_1.st_1==&tg1_1)
                                  printf(" ** 21 OK **\n");
                             else printf(" ** 21 NG **\n");
 if(tg3_1.st_2==&tg2_1[1])
                                  printf(" ** 22 OK **\n");
                             else printf(" ** 22 NG **\n");
 if(tg3_1.st_3==&tg3_1)
                                  printf(" ** 23 OK **\n");
                             else printf(" ** 23 NG **\n");
 if(tg3_1.st_4.i4_1==0xabc)
                                  printf(" ** 24 OK **\n");
                             else printf(" ** 24 NG **\n");
 if(tg3_1.st_4.u1_1=='z')
                                  printf(" ** 25 OK **\n");
                             else printf(" ** 25 NG **\n");
 
 if(strcmp(tg3_1.st_1->tg2.tg3.tg4.u1_4,"")==0)
                                  printf(" ** 27 OK **\n");
                             else printf(" ** 27 NG **\n");
 if((c=tg3_1.st_2->u1_1)=='B')
                                  printf(" ** 28 OK **\n");
                             else printf(" ** 28 NG **\n");
 if(tg3_1.st_3->st_4.i4_1==0xabc)
                                  printf(" ** 29 OK **\n");
                             else printf(" ** 29 NG **\n");
 if(tg3_1.st_3->st_4.u1_1==tg3_1.st_4.u1_1)
                                  printf(" ** 30 OK **\n");
                             else printf(" ** 30 NG **\n");
 if(  &(tg3_1.st_3->st_3->st_3->st_3->st_3->st_3->st_3->st_1->i4_1)
    ==&(tg3_1.st_3->st_1->i4_1)                              )
                                  printf(" ** 31 OK **\n");
                             else printf(" ** 31 NG **\n");
 printf("  * ENDED *\n\n");
}
