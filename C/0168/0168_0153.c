#include <stdio.h>
#include <string.h>
void sub(long double *ldoublep, signed char *scharp){
   *ldoublep = 10.0;
   strcpy(scharp,"cd");
   *ldoublep = *ldoublep + 3.0;

   if(*ldoublep == 13.0 && strcmp(scharp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double *ldoublep;
   signed char *scharp;
   long double ldoublework[5] = {1.0,2.0,3.0,4.0,5.0};
   ldoublep = ldoublework;
   scharp = (signed char *)ldoublework;

   sub(ldoublep,scharp);
}
