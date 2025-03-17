#include <stdio.h>
void sub(int **intp, long **longp){
   **intp = 10;
   **longp = 5;
   **intp = **intp + 3;

   if(**intp == 13 && **longp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   int **intp;
   long **longp;
   long double longwork = 2;
   long *longworkp = (long *)&longwork;
   intp = (int **)&longworkp;
   longp = &longworkp;

   sub(intp,longp);
}
