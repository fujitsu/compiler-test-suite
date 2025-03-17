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
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   longp = (long *)doublework;
   doublep = doublework;

   sub(longp,doublep);
}
