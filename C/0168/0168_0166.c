#include <stdio.h>
#include <string.h>
void sub(long *longp, signed char *scharp){
   *longp = 10;
   strcpy(scharp,"cd");
   *longp = *longp + 3;

   if(*longp == 13 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long *longp;
   signed char *scharp;
   long longwork[5] = {1,2,3,4,5};
   longp = longwork;
   scharp = (signed char *)longwork;

   sub(longp,scharp);
}
