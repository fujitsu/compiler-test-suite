#include <stdio.h>
void sub(unsigned int *uintp, long *longp){
   *uintp = 10;
   *longp = 5;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *longp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   long *longp;
   long longwork[5] = {1,2,3,4,5};
   uintp = (unsigned int *)longwork;
   longp = longwork;

   sub(uintp,longp);
}
