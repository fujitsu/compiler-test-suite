#include <stdio.h>
#include <string.h>
long double    *ldoublep;
char    *charp;

void sub(){
   *ldoublep = 10.0;
   strcpy(charp,"cd");
   *ldoublep = *ldoublep + 3.0;

   if(*ldoublep == 13.0 && strcmp(charp,"cd") == 0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double ldoublework = 2.0;
   ldoublep = (long double *)&ldoublework;
   charp = (char *)&ldoublework;
   sub();
}
