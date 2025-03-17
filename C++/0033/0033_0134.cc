#include <stdio.h>
int n=0,work=0;
 class A { public : int i; A(); ~A(); };
 A::A(){ i =++n; }
 A::~A(){ }
 class X { public: int x;};
 class B : public X, public A { int j; public: B(); ~B();};
 B::B() { j=++n; x=j+5; }
 B::~B() {}
 void f1(A a){ 
#pragma omp parallel
   if (a.i == n-1)
#pragma omp parallel
     ;
   else
#pragma omp parallel
#pragma omp atomic
     work++;
}

 int main(){
#pragma omp parallel
#pragma omp critical
   f1(B());

   if(!work)
     printf("ok\n");
   else
     printf("ng\n");

   return 0;
 }
