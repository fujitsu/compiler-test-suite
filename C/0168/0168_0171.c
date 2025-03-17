#include <stdio.h>
void sub(long **longp, unsigned char **ucharp){
   **longp = 10;
   **ucharp = 2;
   **longp = **longp + 3;

   if(**longp == 13 && **ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long **longp;
   unsigned char **ucharp;
   long double longwork = 2;
   long *longworkp = (long *)&longwork;
   longp = &longworkp;
   ucharp = (unsigned char **)&longworkp;

   sub(longp,ucharp);
}
