#include <stdio.h>
class A {

};

class X {
 public:
  A& f();
  int f(int);
};

class Class {
    int a;
 public:
    int b;
    friend A& X::f();
    friend int X::f(int);
    int ans(){ return a;}
};

Class c;
A aobj;

A& X::f(){
  c.a +=1; return aobj;
}
int X::f(int i){
  c.a +=1;return 0;
}


int main(){
X xobj;
xobj.f();
xobj.f(1);
if ((c.ans()) == 2) { printf("ok\n");} else {printf("ng\n");}
 
}

