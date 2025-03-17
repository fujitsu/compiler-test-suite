#include <iostream>
using namespace std;

struct B {
  void Bf(){ cout << "ok\n"; }
}bobj;

struct A {
 class B *p;
 void f();
};

void A::f(){
  A::p = &bobj;
  (A::p)->Bf();  
}
int main()
{
  A aobj;
  aobj.f();
}
