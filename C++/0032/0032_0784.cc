#include <stdio.h>
class A { public : int aa;};
class B {
        int i;
public:
        virtual void f() = 0;
        B(int ii) : i(ii) { }
        B() { }
        };
class D1 : public B {
public:
        void f();
        D1(int ii) : B(ii) { }
        D1() { }
        };
class D2 : public A, public D1 {
public:
        void f();
        D2(int ii) { }
        D2() { }
        };

class C {
public:
    class D2 d2obj;
  } cobj;

void B::f() { printf("B::f\n"); }
void D1::f() { printf("D1::f\n"); }
void D2::f() { }

D2 d2(0);
B *bp = &d2;
C *cp = &cobj;
D1 &d1cast = d2;
int main() {
   d2.f();        
   ((D1&)d2).f(); 
   bp->f();       

   d1cast.f();    

   cobj.d2obj.f();
   cp->d2obj.f(); 
   printf("ok\n");
 }

