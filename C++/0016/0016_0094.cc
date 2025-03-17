short x;
class A {
 public:
 int a;      
 char **b;   
 short &c;   
 A():c(x){}
}aobj;




class B {
  A & x;   
  A **y;   
  A  z;
 B():x(aobj){}
};
#include <stdio.h>
int main(){
  puts("ok");
}
