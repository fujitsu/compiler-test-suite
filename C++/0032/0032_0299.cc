#include <stdio.h>
class A {
  class B {
     B(B&);
     int operator +(B&);
     void f(B&);
  };
};

class C {
  class D {
     D(D&);
     int operator +(D&);
     void f(D&);
  };
};


class E {
  class F {
     F(F&f){;}
     int operator +(F&f){return 1;}
     void f(F&f){;}
  };
};

class G {
public:
  class H {
     H(G::H&f){;}
     int operator +(G::H&f){return 1;}
     void f(G::H&f){;}
  };
};

class I {
public:
  class J {
     J(::I::J&f){;}
     int operator +(::I::J&f){return 1;}
     void f(::I::J&f){;}
  };
};

A::B::B(B&){};
int A::B::operator +(B&){return 1;};
void A::B::f(B&){}


C::D::D(D&){};
int C::D::operator +(D&){return 1;};
void C::D::f(D&){};

int main(){
printf("ok\n");
}
