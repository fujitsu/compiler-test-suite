#include <stdio.h>
class A {
 public:
  int i;
  void f() { i=10;}
};

template <class T>
class B : private T {
 public:
 using T::f;
 using T::i; 
}; 


B<A> aobj;

int main(){
 aobj.f();
 if (aobj.i ==10) { printf("ok\n");} else {printf("ng\n");}
}
