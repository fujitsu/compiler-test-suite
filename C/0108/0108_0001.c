#include <stdio.h>
void foo() { 
  printf("OK\n");
}
static void foo_impl() __attribute__((alias("foo")));

int main() {
  foo_impl();
  foo();
  foo_impl();
  return 0;
}

