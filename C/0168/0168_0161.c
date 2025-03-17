#include <stdio.h>
void sub(long *longp, double *doublep){
   *longp = 10;
   *doublep = 5.0;
   *longp = *longp + 3;

   if(*longp == 13 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long *longp;
   double *doublep;
   long double doublework = 2.0;
   longp = (long *)&doublework;
   doublep = (double *)&doublework;
   sub(longp,doublep);
}
