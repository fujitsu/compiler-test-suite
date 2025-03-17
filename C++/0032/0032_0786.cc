#include <stdio.h>
class A { public : int aa; virtual void f();};
class B : virtual public A{
public:
        void f();
        };
class B1 : virtual public B{
public:
        void f();
        };
class C : virtual public A {
public:

        };
class D: public B1, public C{
};

void A::f(){ printf("A's f\n"); }
void B::f(){ printf("B's f\n"); }
void B1::f(){ printf("ok\n"); }


D dobj;

int main() {
   dobj.f();
 }

