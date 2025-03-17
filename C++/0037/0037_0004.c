#include <stdio.h>

unsigned int flgOK = 1;

union UN {
  int m01;
  int m02;
} const Obj = {2};

void Func(const union UN Arg) { flgOK &= (Arg.m02 == 2); }
int main() {
  Func(Obj);
  printf("%s\n", flgOK ? "ok" : "ng");
}
