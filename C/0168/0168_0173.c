#include <stdio.h>
void sub(long *longp, unsigned short *ushortp){
   *longp = 10;
   *ushortp = 5;
   *longp = *longp + 3;

   if(*longp == 13 && *ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long *longp;
   unsigned short *ushortp;
   long longwork[5] = {1,2,3,4,5};
   longp = longwork;
   ushortp = (unsigned short *)longwork;

   sub(longp,ushortp);
}
