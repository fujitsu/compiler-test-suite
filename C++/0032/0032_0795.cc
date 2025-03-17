#include <stdio.h>

class B {
 public:
  int b;
};

class C {
public:
  int c;
};


void ff();
class A {
 public:
  friend void f();
  friend void ff();
  friend class B;
  friend C;
  friend int fff(){ return 0;};
};  


A aobj;
int main(){
  printf("ok\n");
} 
