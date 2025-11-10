#include <stdio.h>
#include <setjmp.h>

int Count = 0;

class Class {
  int m01;
public:
   Class()             { printf("Class. ctor() : %d\n", m01=++Count);                      }
  ~Class()             { printf("Class. dtor() : %d\n", m01        ); if (m01==1) throw 1; }
};

jmp_buf env;

extern "C" {
  void __attribute__ ((visibility("default"))) abort() {
    printf("custom abort() returns by longjmp()...\n");
    longjmp(env, 1);
  }
}
int main() {
  if (!setjmp(env))
    try {
      Class Obj;
      if (0!=Count)
        throw Obj;
    } catch (int) {
      printf("ng 1\n");
    } catch (...) {
      printf("ng 2\n");
    }
  else
    printf("ok\n");
}

