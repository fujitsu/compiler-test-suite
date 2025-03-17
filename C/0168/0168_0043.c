#include <stdio.h>
long double    *ldoublep;
unsigned char    *ucharp;

void sub(){
   *ldoublep = 10.0;
   *ucharp = 2;
   *ldoublep = *ldoublep + 3.0;

   if(*ldoublep == 13.0 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double ldoublework = 2.0;
   ldoublep = (long double *)&ldoublework;
   ucharp = (unsigned char *)&ldoublework;
   sub();
}
