

#include <stdio.h>

__attribute__((no_instrument_function))
void __cyg_profile_func_enter(void *func_address, void *call) {
  printf("func start %p %p\n", func_address, call);
}

__attribute__((no_instrument_function))
void __cyg_profile_func_exit(void *func_add, void *call) {
  printf("func end %p %p\n", func_add, call);
}

int f01(int c) {
  printf("c=%d \n",c);
  if (c>0) return f01(c-1);
  else     return -99;
}

int main() {
  int c,(*fp)(int);
  fp=f01;
  c=3;
  printf("end:%d \n",(*fp)(c));
}
