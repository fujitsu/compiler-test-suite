class A {   
 public:
  class Z{};
};
struct B : public A {  
  void func(){}
};
class C: public A,private B, protected A::Z{ 
  typedef int I;
  int a;
};
struct  D : A,B {     
  int x;
};
class E :A,B {
 int y;
};

#include <stdio.h>
int main(){
  puts("ok");
}
