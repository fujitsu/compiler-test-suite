namespace A {
  static int x;
  namespace {
    int a;
  }
}
using namespace A;

class B {
public:
  void f();
  void g(){}
}obj;
void B::f(){}

enum TAG {};

namespace LONG {
  int l;
  namespace NEST {int n;};
  namespace S=LONG;
};
using namespace LONG::S;

#include <stdio.h>
int main(){
  a++;
  x++;
  l=1;
  S::NEST::n=2;
  NEST::n++;

  puts("ok");
}
