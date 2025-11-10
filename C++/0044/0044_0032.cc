#include <stdio.h>
#include <exception>
#include <setjmp.h>

const char* str_uncaught_exception() {
  return std::uncaught_exception() ? " true" : "false";
}

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void my_terminate() {
  printf("my_terminate()  : uncaught : %s\n", str_uncaught_exception());
}

void Func() {
  throw 1;
}
int main() {
  std::set_terminate(my_terminate);
  if (!setjmp(env))
    Func();
  else
    printf("ok\n");
}

