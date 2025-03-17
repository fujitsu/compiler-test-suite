#include <stdio.h>

class X {
public:
  int i;
  X(){}
  X(int i){}
};

template <class T>
class A {
 public:
 int f(T v = T()){ return 2;}
 int g(T v = T(1)){ return 3;}
}; 


A<X> obj;

int main(){
 if ( (obj.f() ==2)
   && ( obj.g() == 3)){ printf("ok\n");}
                      else { printf("ok\n");}
 return 0;
}
