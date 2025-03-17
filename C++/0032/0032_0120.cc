#include <stdio.h>
class X {
public:
  static int i;
  X(){}
  X(int i){}
};
int  X::i=5;
template <class T>
class A {
 public:
 int f(int T::*p = (int T::*)0,int T::*p2 = (int T::*)0,int T::*p3 = (int T::*)0){ return 2;}

}; 

A<X> obj;

int main(){
 if (obj.f() == 2){ printf("ok\n");}else {printf("ng\n");}
}
