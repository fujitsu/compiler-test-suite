#include <stdio.h>
template <class T> class A;

template < class Y>
struct J {
  A<int> *ap;
};

template < class T>
struct A {
  J<T> d;
};

int main(){
A<int> a;
printf("ok\n");
}
