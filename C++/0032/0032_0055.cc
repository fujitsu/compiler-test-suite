#include <stdio.h>
struct A {
  virtual int f1(){ printf("ng\n"); return 1; }
};
struct B : virtual A{ 
  virtual int f1(){ printf("ok\n"); return 1; }
}bobj; 

int (B::*gpmf1)() = &B::f1;
  
typedef  int (B::*pmf1)();

pmf1 func(){ return gpmf1;}

int main(){
(bobj.*func())();
}
