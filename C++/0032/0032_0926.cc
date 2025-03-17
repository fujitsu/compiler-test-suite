
#include <stdio.h>

struct ST1 {
  int m01;
};

typedef union {
  ST1 m02;
} ST2;

struct ST3 {
  ST2 m03;
} Obj = { { 10 } };

void Func(ST3 Para) {
  ST3 lObj;
  lObj = Para;
  Para = lObj;
}
int main() {
  Func(Obj);
  if (Obj.m03.m02.m01==10)
    printf("ok\n");
  else
    printf("ng\n");
}

