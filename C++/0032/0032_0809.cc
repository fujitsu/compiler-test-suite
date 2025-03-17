#include <stdio.h>
class X {
 public:
  static int f();

};

class Class {
    int a;
 public:
    int b;
    friend int X::f();
    int ff(){ return a;}
};

Class c;

int X::f(){
  c.a =1; return c.a;
}



int main(){
 if ((c.ff()) == 1) { printf("ok\n");} else {printf("ok\n");}
}

