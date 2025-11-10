#include <stdio.h>
#include <exception>
#include <setjmp.h>

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void my_unexpected_1() {
  printf("my_unexpected_1() : ng\n");
}

void my_unexpected_2() {
  printf("my_unexpected_2() : ok\n");
}

void Func() {
  printf("set my_unexpected_1()\n");
  std::set_unexpected(my_unexpected_1);
  printf("throw 1\n");
  try {
    throw 1;
  } catch (int) {
    printf("set my_unexpected_2()\n");
    std::set_unexpected(my_unexpected_2);
    std::unexpected();
  }
}
int main() {
  if (!setjmp(env))
    Func();
}

