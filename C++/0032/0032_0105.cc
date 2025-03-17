#include <stdio.h>
struct X {
 int operator +();
};

template <class T>
struct X1 {
 int operator +(T&);
};

template <class T>
class A {
  int i;
 public:
  ~A(){}
  friend int T::operator +();
};

template <class T>
class A1 {
  int i;
 public:
  friend int X1<T>::operator +(T&);
};

A<X> obj;
A1<int> obj2;

int X::operator +(){ obj.i=2;return 1;}

template <class T>
int X1<T>::operator +(T&i ){ obj2.i =3; printf("ok\n");return 2;}

int main(){
X1<int> obj;
int i =0;
 obj+i;
}
