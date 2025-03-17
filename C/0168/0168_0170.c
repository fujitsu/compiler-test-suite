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
   long double longwork = 2;
   longp = (long *)&longwork;
   shortp = (short *)&longwork;
   sub(longp,shortp);
}
