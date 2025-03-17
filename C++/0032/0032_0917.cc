
#include <stdio.h>

struct ST1 {
  int m01;
  ST1() { m01 = 10; }
  ST1(const ST1&) { m01 = 20; }
  ~ST1() { m01 = 30; }
};

typedef struct {
  ST1 m02;
} ST2;

struct ST3 {
  ST2 m03;
} Obj1, Obj2;

void Func(ST3, ST3) {
  Obj1 = Obj2;
}
int main() {
  if (Obj1.m03.m02.m01==10 && Obj2.m03.m02.m01==10)
    printf("ok\n");
  else
    printf("ng\n");
  Func(Obj1, Obj2);
}

