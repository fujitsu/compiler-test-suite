#include <stdio.h>
class B {
 public:
 B(){ printf("ok\n");}
};


template <class T>
class A {
 public:
  void f(T&v=T()){}    
};

int main(){

 B bobj;
 A<B> aobj;
 aobj.f(bobj); 

}
