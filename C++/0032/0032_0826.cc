#include <stdio.h>
class D;
template <class T> class A {
  int a;
  friend class D;
};

class D{ public:
void f(A<int>*p){ 
   p->a =1; printf("ok\n");}
};
int main()
{
  A<int> aobj;
  D dobj;
  dobj.f(&aobj);
}

