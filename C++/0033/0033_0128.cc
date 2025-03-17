#include <stdio.h>
template <class T> class A {
  static  A<T>* Stub;
};

template <class T> A<T>* A<T>::Stub = 0;

int main(){ printf("ok\n");}
