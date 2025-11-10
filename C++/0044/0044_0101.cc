#include <stdio.h>
#include <math.h>
#include <exception>
#include <setjmp.h>

int Flg = 0;

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

void my_terminate() {
  printf("my_terminate()\n");
}

void Func1() {}

void Func2() {
  if (Flg)
    throw 1;
}

void Func3() throw() {
  throw 1;
}

void Func4() {
  throw 1;
}
int main() {
  double VarD;
  std::set_terminate(my_terminate);
  if (!setjmp(env))
    try {
      Func1();
      Func3();
      VarD = log(0.0);
      Func2();
      Func1();
      Func3();
      VarD = log(0.0);
      Func4();
    } catch(int) {
      printf("ng 1\n", VarD);
    } catch (...) {
      printf("ng 2\n", VarD);
    }
  else
    printf("ok\n");
}

