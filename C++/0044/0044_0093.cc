#include <stdio.h>
#include <setjmp.h>

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void Func() noexcept(false) {
  throw 1.0;
}
int main() {
  setvbuf(stdout, NULL, _IONBF, 0);
  if (!setjmp(env))
    Func();
  else
    printf("ok\n");
}

