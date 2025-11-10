#include <iostream>

struct A_2 {
  ~A_2() {
    std::cout << "In A's d'tor\n";
  }
};

struct B_2 {
  ~B_2() {
    std::cout << "In B's d'tor\n";
  }
};

struct C_2 {
  void throw_int() {
    throw 42;
  }

  ~C_2() {
    std::cout << "In C's d'tor\n";
    try {
      B_2 b;
      throw_int();
    } catch (int e) {
      std::cout << "(C::~C) Caught int: " << e << "\n";
    }
  }
};

#define DECLARE(FUNC)                                \
  void FUNC() __attribute__((always_inline));        \
  void FUNC()

DECLARE(throw_char_2) {
  C_2 c;
  throw 'c';
}

DECLARE(cleanup_2) {
  A_2 a;
  try {
    B_2 b;
    throw_char_2();
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
void sub2()
{
  A_2 a;
  cleanup_2();
}
#endif
