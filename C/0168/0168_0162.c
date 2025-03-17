#include <stdio.h>
void sub(long *longp, float *floatp){
   *longp = 10;
   *floatp = 5.0;
   *longp = *longp + 3;

   if(*longp == 13 && *floatp == 5.0){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long *longp;
   float *floatp;
   long longwork[5] = {1,2,3,4,5};
   longp = longwork;
   floatp = (float *)longwork;

   sub(longp,floatp);
}
