#include <iostream>

struct A_1 {
  ~A_1() {
    std::cout << "In A's d'tor\n";
  }
};

struct B_1 {
  ~B_1() {
    std::cout << "In B's d'tor\n";
  }
};

struct C_1 {
  void throw_int() {
    throw 42;
  }

  ~C_1() {
    std::cout << "In C's d'tor\n";
    try {
      B_1 b;
      throw_int();
    } catch (int e) {
      std::cout << "(C::~C) Caught int: " << e << "\n";
    }
  }
};

#define DECLARE(FUNC)                           \
  void FUNC() __attribute__((noinline));        \
  void FUNC()

DECLARE(throw_char_1) {
  C_1 c;
  throw 'c';
}

DECLARE(cleanup_1) {
  A_1 a;
  try {
    B_1 b;
    throw_char_1();
  } catch (char e) {
    std::cout << "Caught char: " << e << "\n";
  }
}

#ifdef ORIGINAL
int main() {
  A a;
  cleanup();
}
#else
void sub1()
{
  A_1 a;
  cleanup_1();
}
#endif
