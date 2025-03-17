#include <stdio.h>
class A { public: int a;}aa;
class B { public: int a;}bb;
template < class T >
B f(T a){ printf("ok\n"); return bb;}

char c;
int main(){
  f(c);
}

A f(char a){
 printf("ng\n");
 return aa;
}
