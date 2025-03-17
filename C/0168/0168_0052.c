#include <stdio.h>
long    *longp;
unsigned char    *ucharp;

void sub(){
   *longp = 10;
   *ucharp = 2;
   *longp = *longp + 3;

   if(*longp == 13 && *ucharp == 2){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long double longwork = 2;
   longp = (long *)&longwork;
   ucharp = (unsigned char *)&longwork;
   sub();
}
