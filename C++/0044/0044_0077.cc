#include <stdio.h>

int flg = 0;
void Func0();

class Class {
public:
  Class() {}
  Class(const Class &) {
    if (flg)
      Func0();
  }
  ~Class() {}
};

void Func0() {
  if (!flg)
    throw Class();
}

#ifdef __GNUC__
void Func1() throw() __attribute__((always_inline));
#endif

void Func1() throw() { Func0(); }

void Func2() noexcept(false) {
  try {
    Func0();
    Class Obj;
    try {
      Func0();
    } catch (int) {
    }
    try {
      Func0();
      Func1();
    } catch (int *) {
    } catch (...) {
    }
  } catch (Class) {
    printf("ok\n");
  }
}
int main() { Func2(); }
