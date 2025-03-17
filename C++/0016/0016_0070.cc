

template <class T> 
class A {
 public: 
 class B {
  public: 
  class C {
  public:
   void func(int);
 }c;
 }b;
};
struct  X{ 
 struct Y{
  struct Z {
   void funcx(int);
 }z;
}y;
}x;
void X::Y::Z::funcx(int){}
A<int> a ;
template<>void A<int>::B::C::func(int){}
#include <stdio.h>
int main(){
a.b.c.func(10);
x.y.z.funcx(10);

 puts("ok"); 
}
