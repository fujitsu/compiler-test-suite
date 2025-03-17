namespace N {
  void funcn(){}
  namespace {
    void f(){}
  }
  namespace M {
    void funcm(){}
  }
}
using namespace N;

template<class T > class FF {
 public:
 T func();
};
template<>inline short  FF<short>::func(){return 0;}
class A {
 public:
  void func();
}x;
inline void A::func(){}

#include <stdio.h>
int main(){
  x.func();
  f();

  puts("ok");
}




