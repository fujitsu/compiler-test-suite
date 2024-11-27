#include<stdio.h>
#include<string.h>

int main() {
 
   printf(" TEST START \n");
 
#line 1 "abc"
   if(__LINE__ == 1)
      if(!memcmp(__FILE__,"abc",3))
         printf(" *** O K (32-01) *** \n");
      else
         printf(" *** N G (32-01)A*** \n");
   else
         printf(" *** N G (32-01)B*** \n");
 
#line 1
   if(__LINE__ == 1)
         printf(" *** O K (32-03) *** \n");
   else
         printf(" *** N G (32-03) *** \n");
 
#undef  a
#define a 1
#line a
   if(__LINE__ == 1)
         printf(" *** O K (32-05) *** \n");
   else
         printf(" *** N G (32-05) *** \n");
 
#undef  a
#define a 1 "abc"
#line a
   if(__LINE__ == 1)
      if(!memcmp(__FILE__,"abc",3))
         printf(" *** O K (32-06) *** \n");
      else
         printf(" *** N G (32-06)A*** \n");
   else
         printf(" *** N G (32-06)B*** \n");
 
#line 99999999
   if(__LINE__ == 99999999)
         printf(" *** O K (32-09) *** \n");
   else
         printf(" *** N G (32-09) *** \n");
 
 
   printf(" TEST END \n");
 
}
