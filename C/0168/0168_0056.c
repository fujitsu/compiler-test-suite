#include <stdio.h>
long    **longp;
unsigned long    **ulongp;

void sub(){
   **longp = 10;
   **ulongp = 5;
   **longp = **longp + 3;

   if(**longp == 13 && **ulongp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double longwork = 2;
   long *longworkp = (long *)&longwork;
   longp = &longworkp;
   ulongp = (unsigned long **)&longworkp;

   sub();
}
