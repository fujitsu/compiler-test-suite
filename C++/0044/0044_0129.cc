#include <stdio.h>
#include <setjmp.h>

int Count = 0;

extern "C" void __attribute__ ((visibility("default"))) __cxa_free_exception(void *thrown_exception) {
  printf("custom __cxa_free_exception() : %d\n", ++Count);
  if (Count==2)
    printf("ok\n");
}

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

int Func() {
  throw 1.0;
}

class Class {
  int m01;
public:
  Class(int) {
    printf("Class.ctor() : %d\n", m01=++Count);
  }
};
int main() {
  if (!setjmp(env)) {
    try {
      throw Class(Func());
    } catch (double) {
      printf("catch\n");
    }
    if (Count!=2)
      printf("ng 1\n");
  } else
    printf("ng 2\n");
}

