struct X {
  operator int();
};

template <class T>
struct X1 {
  operator int();
};

template <class T>
class A {
  int i;
 public:
  ~A(){}
  friend T::operator int();
};

template <class T>
class A1 {
  int i;
 public:
  friend  X1<T>::operator int();
};


A<X> obj;
A1<int> obj2;

X::operator int(){ obj.i=2;return 1;}

template <class T>
X1<T>::operator int(){ obj2.i =3; return 2;}

#include <stdio.h>
int main(){

  puts("ok");
}
