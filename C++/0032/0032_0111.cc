#include <stdio.h>
class A {
 public:
  int i;
};

template <class T>
class B : private T {
 public:
 using T::i;
 void f() { i=10;}
}; 


B<A> aobj;

int main(){
 aobj.f();
 if (aobj.i ==10) { printf("ok\n");} else {printf("ng\n");}
}
