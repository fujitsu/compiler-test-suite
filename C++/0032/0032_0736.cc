#include <stdio.h>

template<typename T> void Func(T) {
  printf("ng\n");
}

void Func(double) {
  printf("ng\n");
}
int main() {
  printf("ok\n");
}

