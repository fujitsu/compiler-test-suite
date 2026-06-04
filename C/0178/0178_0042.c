#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>


static int c=0;

typedef struct di {
   char        D01[0];
   short       D02[0];
   int         D03;
   long        D04[0];
   long long   D05;
   _Bool       D06;
   struct di  *D07;
   int         D08[];
} DI;

typedef struct ci {
   char        D01;
   char        D02 __attribute__((aligned(8)));
   char        D03;
   int         D04 __attribute__((packed));
   char        D05;
} CI;

typedef struct bi {
   char        D01;
   typeof(c)   D02;
   short       D03;
   short       D04;
   short       D05;
} BI;

struct ai {
   char        D01;
   int         D02;
   char        D03;
   int         D04;
} __attribute__((packed));

void check(size_t i,int n) {
  c++;
  if (i==n) printf("ok:%d \n",c);
  else      printf("ng:%d %d %d \n",c,i,n);
}
int main() {
  BI bb;
  printf("basic D2 type offsetof \n");
  check(__builtin_offsetof(DI,D01),0);
  check(__builtin_offsetof(DI,D02),0);
  check(__builtin_offsetof(DI,D03),0);
  check(__builtin_offsetof(DI,D04),8);
  check(__builtin_offsetof(DI,D05),8);
  check(__builtin_offsetof(DI,D06),16);
  check(__builtin_offsetof(DI,D07),24);
  check(__builtin_offsetof(DI,D08),32);
  printf("aligned type offsetof \n");
  check(__builtin_offsetof(CI,D01),0);
  check(__builtin_offsetof(CI,D02),8);
  check(__builtin_offsetof(CI,D03),9);
  check(__builtin_offsetof(CI,D04),10);
  check(__builtin_offsetof(CI,D05),14);
  printf("virtual type offsetof \n");
  check(__builtin_offsetof(struct { char a; int b; }, a),0);
  check(__builtin_offsetof(struct { char a; int b; }, b),4);
  printf("typeof type offsetof \n");
  check(__builtin_offsetof(struct bi,D01),0);
  check(__builtin_offsetof(typeof(bb),D02),4);
  check(__builtin_offsetof(BI,D03),8);
  check(__builtin_offsetof(BI,D04),10);
  printf("packd  type offsetof \n");
  check(__builtin_offsetof(struct ai,D01),0);
  check(__builtin_offsetof(struct ai,D02),1);
  check(__builtin_offsetof(struct ai,D03),5);
  check(__builtin_offsetof(struct ai,D04),6);
}


