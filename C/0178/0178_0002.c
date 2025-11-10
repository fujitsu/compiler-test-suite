#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>


typedef struct bi {
   char        I01;
   short       I02;
   int         I03;
   long        I04;
   long long   I05;
   _Bool       I06;
   _Bool       I07;
   _Bool       I08;

} BI;

typedef struct bf {
   float       F01;
   double      F02;
   long double F03;
   _Complex    F04;
   _Complex    F05;
} BF;

typedef struct di {
   char        D01[3];
   short       D02[3];
   int        *D03;
   long        D04:3;
   long long   D05;
   _Bool       D06;
   BI          D07;
   _Bool       D08;
   _Bool       D09;

} DI;



void check(size_t i,int n) {
  static int c=0;
  c++;
  if (i==n) printf("ok:%d \n",c);
  else      printf("ng:%d %d %d \n",c,i,n);
}
int main() {
  printf("basic I type offsetof \n");
  check(__builtin_offsetof(BI,I01),0);
  check(__builtin_offsetof(BI,I02),2);
  check(__builtin_offsetof(BI,I03),4);
  check(__builtin_offsetof(BI,I04),8);
  check(__builtin_offsetof(BI,I05),16);
  check(__builtin_offsetof(BI,I06),24);
  check(__builtin_offsetof(BI,I07),25);
  check(__builtin_offsetof(BI,I08),26);

  printf("basic F type offsetof \n");
  check(__builtin_offsetof(BF,F01),0);
  check(__builtin_offsetof(BF,F02),8);
  check(__builtin_offsetof(BF,F03),16);
  check(__builtin_offsetof(BF,F04),32);
  check(__builtin_offsetof(BF,F05),48);

  printf("basic D type offsetof \n");
  check(__builtin_offsetof(DI,D01),0);
  check(__builtin_offsetof(DI,D02),4);
  check(__builtin_offsetof(DI,D03),16);
  check(__builtin_offsetof(DI,D05),32);
  check(__builtin_offsetof(DI,D06),40);
  check(__builtin_offsetof(DI,D07),48);
  check(__builtin_offsetof(DI,D08),80);
  check(__builtin_offsetof(DI,D09),81);
}


