#include <stdio.h>
void sub(unsigned int *uintp, double *doublep){
   *uintp = 10;
   *doublep = 5.0;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *doublep == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   double *doublep;
   double doublework[5] = {1.0,2.0,3.0,4.0,5.0};
   uintp = (unsigned int *)doublework;
   doublep = doublework;

   sub(uintp,doublep);
}
