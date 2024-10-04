#include <stdio.h>
int main( ) {
      struct t {
         signed long long int o4:31;
         signed long long int d : 2;
       };
      struct t x={0,3};

     if (x.d ==  -1) printf("** kaimk2048 (5) ** ok\n");
     else            printf("** kaimk2048 (5) ** ng %d\n", x.d);
    }

