#include <stdio.h>

int work = 0;

struct B { 
  int f1(){ work=1; return 1; }
}bobj; 

int (B::*gpmf1)() = &B::f1;
  
typedef  int (B::*pmf1)();

pmf1 func(){ return gpmf1;}

int main(){
#pragma omp parallel
((&bobj)->*func())();

 if( work )
   printf("ok\n");
 else
   printf("ng\n");
 return 0;
}
