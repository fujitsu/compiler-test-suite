#include <stdio.h>

void Func() {
  throw 1;
}
int main() {
  try {
    Func();
  } catch (int Var) {
    printf("ok : %d\n", Var);
  } catch (...) {
    printf("ng\n");
  }
}

