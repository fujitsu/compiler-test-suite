#include <stdio.h>
class X {
 public:
 X(){}
 X(int i){ if ( i==7) { printf("ok\n");}else {printf("ng\n");}}
};

template <class T>
class X1 {
 public:
 X1();
};

template <class T, int i, int j>
class A : public T, public X1<T> {
 public:
  A();
};

template <class T>
X1<T>::X1(){}

template <class T, int i, int j>
A<T,i,j>::A():T(i+j),X1<T>(){}


int main(){
  {
   A<X,3,4> obj;
  }
}
