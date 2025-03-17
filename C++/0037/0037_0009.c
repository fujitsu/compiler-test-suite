#include <stdio.h>

unsigned int flgOK = 1;

union UN {
  int m01;
  int m02;
};

union uN {
  union UN m00;
} Obj = {{1}};

union uN const *P = &Obj;

void Func(volatile union UN Arg) { flgOK &= (Arg.m01 == 1); }
int main() {
  Func(P->m00);
  printf("%s\n", flgOK ? "ok" : "ng");
}
