class A {
 public:
  template <class T> class T1 {
  public:
    T t;
    T f();
  };
}aobj;

template<>inline int A::T1<int>::f(){return 1;}
template<>inline char A::T1<char>::f(){return '1';}

 template<class T>  class AT {
    class B {T a;};
 };
 AT<int > x1;  
 AT<char> x2; 
#include <stdio.h>
int main(){
 A::T1<int> x;
 A::T1<char> y;
 x.f();
 y.f();

 puts("ok");
}
