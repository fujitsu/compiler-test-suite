

#include <stdio.h>
class A {
  public :
   int a;
};
class B : virtual public A {
    public:
    int a;
};
class D : virtual A {};
class C :  public B ,public virtual A  , D{
  public :
  void f(){
    a =10;
  };
};

int main() {
  C obj;
  obj.f();
  if (obj.a == 10)
    printf("ok\n");
  else
    printf("ng\n");
}
