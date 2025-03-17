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
   long double ulongwork = 2;
   ulongp = (unsigned long *)&ulongwork;
   scharp = (signed char *)&ulongwork;
   sub(ulongp,scharp);
}
