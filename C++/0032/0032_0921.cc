
#include <stdio.h>

struct ST1 {
  int m01;
  ST1() { m01 = 10; }
  ST1(const ST1&) { m01 = 20; }
  ~ST1() { m01 = 30; }
};

struct ST3 {
  class {
  public:
    ST1 m02;
  } m03;
} Obj;

void Func(ST3 Para) {
  ST3 lObj;
  lObj = Para;
}
int main() {
  if (Obj.m03.m02.m01==10)
    printf("ok\n");
  else
    printf("ng\n");
  Func(Obj);
}

