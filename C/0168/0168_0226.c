#include <stdio.h>
#include <string.h>
void sub(unsigned long *ulongp, signed char *scharp){
   *ulongp = 10;
   strcpy(scharp,"cd");
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long *ulongp;
   signed char *scharp;
   unsigned long ulongwork[5] = {1,2,3,4,5};
   ulongp = ulongwork;
   scharp = (signed char *)ulongwork;

   sub(ulongp,scharp);
}
