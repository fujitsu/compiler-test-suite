#include <stdio.h>

unsigned int flgOK = 1;

struct ST {
  int m01;
  int m02;
};

struct sT {
  struct ST m00;
} Obj = {{1, 2}};

struct sT *P = &Obj;

void Func(const struct ST Arg) {
  flgOK &= (Arg.m01 == 1);
  flgOK &= (Arg.m02 == 2);
}
int main() {
  Func(P->m00);
  printf("%s\n", flgOK ? "ok" : "ng");
}
