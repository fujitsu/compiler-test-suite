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

void my_terminate_1() {
  printf("my_terminate_1() : ng\n");
}

void my_terminate_2() {
  printf("my_terminate_2() : ok\n");
}

void Func() {
  printf("set my_terminate_1()\n");
#if defined(_LIBCPP_VERSION)
  std::set_terminate(my_terminate_2);
#endif
  printf("throw 1\n");
  try {
    throw 1;
  } catch (int) {
    printf("set my_terminate_2()\n");
    std::set_terminate(my_terminate_2);
    std::terminate();
  }
}
int main() {
  if (!setjmp(env))
    Func();
}

