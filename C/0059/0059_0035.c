
#include <stdio.h>

void __cyg_profile_func_enter(void *func_address, void *call) {
  printf("func start %p %p\n", func_address, call);
}

void __cyg_profile_func_exit(void *func_add, void *call) {
  printf("func end %p %p\n", func_add, call);
}

int add(int a, int b) {
  return a + b;
}

int main() {
  int result = add(3, 7);
  printf("result = %d\n", result);
}
