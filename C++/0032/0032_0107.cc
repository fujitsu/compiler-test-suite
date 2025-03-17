#include <stdio.h>
struct X { int operator =(int i){printf("ok\n"); return 0;} int f();};

template <class T>
class A :private T {
 public:
   using T::operator =;
};

A<X> obj;

int main(){

 obj.operator=(1);
}
