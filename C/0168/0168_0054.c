#include <stdio.h>
long    *longp;
unsigned long    *ulongp;

void sub(){
   *longp = 10;
   *ulongp = 5;
   *longp = *longp + 3;

   if(*longp == 13 && *ulongp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   long longwork[5] = {1,2,3,4,5};
   longp = longwork;
   ulongp = (unsigned long *)longwork;

   sub();
}
