#include <stdio.h>
#include <exception>
#include <setjmp.h>

int Count = 0;

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

std::terminate_handler default_terminate;

void my_terminate() {
  printf("my_terminate()  : uncaught : %s\n", str_uncaught_exception());
  std::set_terminate(default_terminate);
  try {
    throw;
  } catch (int) {
    printf("ok\n");
  }
}
int main() {
  default_terminate = std::set_terminate(my_terminate);
  if (!setjmp(env))
    throw 1;
}

