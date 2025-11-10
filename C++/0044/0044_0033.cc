#include <exception>
#include <stdio.h>
#include <setjmp.h>

void my_terminate() {
  printf("my_terminate() ok, though aborting...\n");
}

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void Func() throw() {
  std::set_terminate(my_terminate);
  if (!setjmp(env))
    throw 1;
}
int main() {
  Func();
}

