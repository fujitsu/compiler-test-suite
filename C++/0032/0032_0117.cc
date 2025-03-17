#include <stdio.h>
class A {
 public:
  int a:1;
  A():a(1){}
}obj;


template <class T>
class B {
 public:
 int f() { return  obj.T::a;}
};

B<A> bobj;

int main(){  if (bobj.f() != 0 ) { printf ("ok\n");} else {printf("ng\n");}}
