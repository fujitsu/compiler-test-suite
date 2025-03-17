#include <stdio.h>

unsigned int flgOK = 1;

union UN {
  int m01;
  int m02;
};

union uN {
  union UN m00;
} Obj = {{1}};

void Func(const union UN Arg) { flgOK &= (Arg.m01 == 1); }
int main() {
  Func(Obj.m00);
  printf("%s\n", flgOK ? "ok" : "ng");
}
