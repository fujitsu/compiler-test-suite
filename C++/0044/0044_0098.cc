#include <stdio.h>
#include <setjmp.h>

jmp_buf env;

extern "C" {
  void abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

static int Flg = 1;

void Func1() {
  static int* PFlg = &Flg;
  if (*PFlg)
    throw 0.0;
  else
    throw 0;
}

inline void Func2() {
  Func1();
  try {
    Func1();
  } catch (int) {
    printf("ng1\n");
  }
}
int main() {
  if (!setjmp(env))
    try {
      Func2();
    } catch (double) {
      printf("ok\n");
    }
  else
    printf("ng2\n");
}

