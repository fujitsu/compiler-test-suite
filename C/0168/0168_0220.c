#include <stdio.h>
void sub(unsigned long *ulongp, double *doublep){
   *ulongp = 10;
   *doublep = 5.0;
   *ulongp = *ulongp + 3;

   if(*ulongp == 13 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned long *ulongp;
   double *doublep;
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   ulongp = (unsigned long *)doublework;
   doublep = doublework;

   sub(ulongp,doublep);
}
