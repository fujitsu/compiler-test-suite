#include <stdio.h>
#include <setjmp.h>

jmp_buf env;

extern "C" {
  void abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
  void _Unwind_Resume (void *) {
    printf("custom _Unwind_Resume() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}

int Count = 0;

class Class {
  int m01;
public:
  Class()  {
    printf("Class.ctor() : %d\n", m01=++Count);
  }
  ~Class() {
    printf("Class.dtor() : %d\n", m01        );
  }
};

void Func1() {
  if (!Count)
    throw 1;
}

inline void Func2() {
  Func1();
  Class Obj2;
  Func1();
}
int main() {
  if (!setjmp(env))
    try {
      Func2();
    } catch (int) {
      printf("ok\n");
    }
  else
    printf("ng\n");
}

