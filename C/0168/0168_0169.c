#include <stdio.h>
void sub(long *longp, short *shortp){
   *longp = 10;
   *shortp = 5;
   *longp = *longp + 3;

   if(*longp == 13 && *shortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long *longp;
   short *shortp;
   long longwork[5] = {1,2,3,4,5};
   longp = longwork;
   shortp = (short *)longwork;

   sub(longp,shortp);
}
