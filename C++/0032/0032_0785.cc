#include <stdio.h>
class A { public : int aa;};
class B : public A{
        int i;
public:
        virtual void f();
        };
class D1 : public B {
public:
        };
void B::f(){ i=1; printf("ok\n");}
D1 d1obj;
int main() {
   d1obj.f();  
 }

