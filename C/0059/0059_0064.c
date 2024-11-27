#include <stdio.h>

__attribute__((no_instrument_function))
void x_enter(void *func_address, void *call) {
  printf("func start %p %p\n", func_address, call);
}

__attribute__((no_instrument_function))
void x_exit(void *func_add, void *call) {
  printf("func end %p %p\n", func_add, call);
}

int add(int a, int b) {
  return a + b;
}

int main() {
  int result = add(3, 7);
  printf("result = %d\n", result);
}
