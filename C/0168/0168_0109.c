#include <stdio.h>
void sub(double *doublep, long double *ldoublep){
   *doublep = 10.0;
   *ldoublep = 5.0;
   *doublep = *doublep + 3.0;

   if(*doublep == 13.0 && *ldoublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   double *doublep;
   long double *ldoublep;
   long double ldoublework = 2.0;
   doublep = (double *)&ldoublework;
   ldoublep = (long double *)&ldoublework;
   sub(doublep,ldoublep);
}
