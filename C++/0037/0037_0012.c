#include <stdio.h>

unsigned int flgOK = 1;

struct ST {
  int m01;
  int m02;
};

typedef const struct ST CST;

struct sT {
  CST m00;
} Obj = {{1, 2}};

void Func(struct ST Arg) {
  flgOK &= (Arg.m01 == 1);
  flgOK &= (Arg.m02 == 2);
}
int main() {
  Func(Obj.m00);
  printf("%s\n", flgOK ? "ok" : "ng");
}
