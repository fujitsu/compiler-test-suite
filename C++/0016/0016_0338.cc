







#include <stdio.h>
class X { public: int xa,xb; };
class A : public X {
public:
  int a;
  char b;
  static int st_a;
  void        f();
};
void A::f(){
  printf("A::f %d,%c\n",a,b);
}

int A::st_a = 1;
int g_a     = 1;

void g(A a){
  printf("g %d,%c\n",a.a,a.b);
}

int main(){
  A aobj;
  aobj.a = 1;
  aobj.b = 'b';
  aobj.xa= 2;
  aobj.xb= 3;
  aobj.f();
  g(aobj);
  return 0;
}
