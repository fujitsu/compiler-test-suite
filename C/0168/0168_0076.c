#include <stdio.h>
#include <string.h>
unsigned int    *uintp;
signed char    *scharp;

void sub(){
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
   long double uintwork = 2;
   uintp = (unsigned int *)&uintwork;
   scharp = (signed char *)&uintwork;
   sub();
}
