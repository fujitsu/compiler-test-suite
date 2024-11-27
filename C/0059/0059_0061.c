
#include <stdio.h>

__attribute__((no_instrument_function))
void __cyg_profile_func_enter(void) {
  printf("func start\n");
}

__attribute__((no_instrument_function))
void __cyg_profile_func_exit(void) {
  printf("func end\n");
}

int add(int a, int b) {
  return a + b;
}

int main() {
  int result = add(3, 7);
  printf("result = %d\n", result);
}
