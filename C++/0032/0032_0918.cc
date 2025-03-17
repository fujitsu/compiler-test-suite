
#include <stdio.h>

struct ST {
  int m01;
  int :20;
  int m02;
  ST() { m01 = 10; m02 = 20; }
  ~ST() {}
  ST(const ST& Para) { m01 = 30; m02 = 40; }
} Obj;

void Func(ST Para) {
  ST lObj;
  lObj = Para;
  Para = lObj;
}
int main() {
  Func(Obj);
  if (Obj.m01==10 && Obj.m02==20)
    printf("ok\n");
  else
    printf("ng\n");
}

