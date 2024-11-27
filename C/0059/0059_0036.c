#include <stdio.h>

__attribute__((no_instrument_function))
void __cyg_profile_func_enter(char c) {
  printf("func start %d\n",c);
}

__attribute__((no_instrument_function))
void __cyg_profile_func_exit(int a) {
  printf("func end %d\n",a);
}

int add(int a, int b) {
  return a + b;
}

int main() {
  int result = add(3, 7);
  printf("result = %d\n", result);
}
