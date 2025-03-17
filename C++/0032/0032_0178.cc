

#include <stdio.h>
class A {
  public :
   class B {
   public:
      int a ;
   };
};
class C {
  public :
  class B : virtual public A::B {
    public:
    int a;
  };
};
class B :  public C::B ,public virtual A::B {
  public :
  void f(){
    a =10;
  };
};

struct AA {
  struct BB {
    struct CC {
      int aa;
    };
  };
  struct DD : virtual public BB::CC {
  };
};

struct EE : public AA::DD, virtual public AA::BB::CC{
  void f(){
     aa = 20;
   }
}; 

int main() {
  B obj;
  EE obj2;
  obj.f();
  obj2.f();
  if (obj.a == 10 && obj2.aa == 20)
    printf("ok\n");
  else
    printf("ng\n");
}
