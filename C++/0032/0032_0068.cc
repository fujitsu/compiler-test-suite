#include <stdio.h>
class B {
 public: int a;
}bobj; 

template <class T>
class A {
 public:
 int f();
};

template <class T>
int A<T>::f(){B bobj; B bobj1 = bobj; bobj = bobj1; return 1; };

A<int> cobj;

int main(){
   if ( cobj.f() != 1){ printf("ng\n");}
    printf("ok\n");
}




