#include <stdio.h>
class A {
  class B {
    class C {
      typedef int I;
      C(B&b){;}
      int operator +(B&b){return 1;};
       operator I(){return 1;};
      void f(B&b){;}
    };
  };
};



class D {
  typedef int I;
  class E {
    class F {
      F(I&i){;}
      int operator +(I&i){return 1;};
      operator I(){return 1;};
      void f(I&i){;}
    };
  };
};


int main(){
printf("ok\n");
}
