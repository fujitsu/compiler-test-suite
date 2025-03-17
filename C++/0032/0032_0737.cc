#include <stdio.h>

template<typename T> void Func(T) {
  printf("ng\n");
}

template<> void Func(double) {
  printf("ok\n");
}

void Func(double) {
  printf("ng\n");
}
int main() {
  Func<double>(0.0);
}

