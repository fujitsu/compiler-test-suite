#include <stdio.h>
class B {
 public:
  int b;
};

class V {
 public:
  int v;
};

class A : public B, virtual V {
 public:
  int a;
};
int main()
{
  A    aobj;
  A   &ar=aobj;
  B    bobj;
  B   &br=bobj;
  
  (A&)ar;
  (B&)ar;
  (V&)ar;
  (B&)ar;
  (int&)ar;
  printf("ok\n");
}

