#include <stdio.h>
int n=0;
 class A { public : int i; A(); ~A(); };
 A::A(){ i =++n; }
 A::~A(){ }
 class X { public: int x;};
 class B : public X, public A { int j; public: B(); ~B();};
 B::B() { j=++n; x=j+5; }
 B::~B() {}
 void f1(A a){ 
   if (a.i == 1)
     printf("ok\n");
   else
     printf("ng\n");
}

 int main(){
   f1(B());
   return 0;
 }
