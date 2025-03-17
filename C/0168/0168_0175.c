#include <stdio.h>
void sub(long **longp, unsigned short **ushortp){
   **longp = 10;
   **ushortp = 5;
   **longp = **longp + 3;

   if(**longp == 13 && **ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long **longp;
   unsigned short **ushortp;
   long double longwork = 2;
   long *longworkp = (long *)&longwork;
   longp = &longworkp;
   ushortp = (unsigned short **)&longworkp;

   sub(longp,ushortp);
}
