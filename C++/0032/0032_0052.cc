
#include <stdio.h>
int count=0;
class B { public: int a[10];}bobj; 


class X {
public:
   typedef B xxx;
   int x,j;
   X(){}
 };
class J{
 public:
 typedef X yyy;
};

template <class T>
class A {
 public:
  T x;
  int f(){  return sizeof(x);}
};

A<X::xxx> ac;
A<J::yyy::xxx> ac2;
int main(){
  if ((ac.f() == 40) &&(ac2.f() == 40) ){ printf("ok\n");}
  else { printf("ng\n");}

}




