#include <stdio.h>

class X {
 public:
  int f();
  int f(int);
};

class Class {
    int a;
 public:
    int b;
    friend int X::f();
    friend int X::f(int);
    int ans(){ return a;}
};

Class c;

int X::f(){
  c.a +=1; return 0;
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

