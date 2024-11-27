#include<stdio.h>
#include<ctype.h>
#include"string.h"

int main() {
 
char  a=0, *b="abc", *c="12.5";
 
 
   printf(" TEST START \n");
 
 
   if ( memcmp(b,"abc",2) == 0)
      printf(" *** O K (56-01) ***  \n");
   else
      printf(" === N G (56-01) ===  \n");
 
   if ( a == NULL)
      printf(" *** O K (56-02) ***  \n");
   else
      printf(" === N G (56-02) ===  \n");

   printf(" TEST ENDED \n");
 
}
