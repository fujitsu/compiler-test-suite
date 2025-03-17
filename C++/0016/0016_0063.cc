
class X {
  public : 
  int y;
};
namespace N{
 int aa;
  class A:public X {
   public:
    int a;
    int b;
    void func(){}
    void func2(){}
  };
  int x;
  class B : private A {
   public:
   using A::a;
   using A::b;
   using X::y;
   using A::func;
   using A::func2;
  };
}
using namespace N;
struct  C : private A {
 public:
 using A::a;
 using A::b;
 using X::y;
 using A::func;
 using A::func2;
};
#include <stdio.h>
int main(){ puts("ok"); }
 
