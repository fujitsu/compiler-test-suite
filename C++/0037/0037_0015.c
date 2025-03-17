#include <stdio.h>

unsigned int flgOK = 1;

union UN {
  int m01;
  int m02;
};

struct ST {
  union UN m00;
} Obj = {{2}};

struct ST const *P = &Obj;

void Func(union UN Arg) { flgOK &= (Arg.m02 == 2); }
int main() {
  Func(P->m00);
  printf("%s\n", flgOK ? "ok" : "ng");
}
