#include <stdio.h>
void sub(long double **ldoublep, unsigned char **ucharp){
   **ldoublep = 10.0;
   **ucharp = 2;
   **ldoublep = **ldoublep + 3.0;

   if(**ldoublep == 13.0 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double **ldoublep;
   unsigned char **ucharp;
   long double ldoublework = 2.0;
   long double *ldoubleworkp = (long double *)&ldoublework;
   ldoublep = &ldoubleworkp;
   ucharp = (unsigned char **)&ldoubleworkp;

   sub(ldoublep,ucharp);
}
