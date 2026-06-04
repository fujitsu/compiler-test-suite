#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>


void check(size_t i,int n) {
  static int c=0;
  c++;
  if (i==n) printf("ok:%d \n",c);
  else      printf("ng:%d %d %d \n",c,i,n);
}

typedef struct ui {
   union  mem { char        I01;
                short       I02;
                int         I03;
              } MEM;
   long        I04;
   long long   I05;
} UI;

typedef union ui2 {
   struct  { char        I01;
             short       I02;
             int         I03;
           } MEM;
   long        I04;
   long long   I05;
} UI2;
int main() {
  printf("union type offsetof \n");
  check(__builtin_offsetof(UI,MEM.I01),0);
  check(__builtin_offsetof(UI,MEM.I02),0);
  check(__builtin_offsetof(UI,MEM.I03),0);
  check(__builtin_offsetof(UI,I04),8);
  check(__builtin_offsetof(UI,I05),16);
  printf("union type2 offsetof \n");
  check(__builtin_offsetof(UI2,MEM.I01),0);
  check(__builtin_offsetof(UI2,MEM.I02),2);
  check(__builtin_offsetof(UI2,MEM.I03),4);
  check(__builtin_offsetof(UI2,I04),0);
  check(__builtin_offsetof(UI2,I05),0);

}


