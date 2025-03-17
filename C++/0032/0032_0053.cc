#include <stdio.h>
struct B { 
  int f1(){printf("ok\n");return 1;}
}bobj; 

int (B::*gpmf1)() = &B::f1;
  
typedef  int (B::*pmf1)();

struct A {
 operator  pmf1(){return gpmf1;}
};

A ac;
int main(){
  (bobj.*(ac.operator pmf1()))();
}
