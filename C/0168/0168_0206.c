#include <stdio.h>
#include <string.h>
void sub(unsigned int *uintp, signed char *scharp){
   *uintp = 10;
   strcpy(scharp,"cd");
   *uintp = *uintp + 3;

   if(*uintp == 13 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   signed char *scharp;
   long double uintwork = 2;
   uintp = (unsigned int *)&uintwork;
   scharp = (signed char *)&uintwork;
   sub(uintp,scharp);
}
