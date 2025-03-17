#include <stdio.h>
void sub(float *floatp, double *doublep){
   *floatp = 10.0;
   *doublep = 5.0;
   *floatp = *floatp + 3.0;

   if(*floatp == 13.0 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   float *floatp;
   double *doublep;
   long double doublework = 2.0;
   floatp = (float *)&doublework;
   doublep = (double *)&doublework;
   sub(floatp,doublep);
}
