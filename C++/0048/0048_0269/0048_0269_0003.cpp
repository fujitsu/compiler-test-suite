#include <stdio.h>
#include <stdlib.h>
#include <iostream>

struct A_3 {
  ~A_3() {
    std::cout << "In A's d'tor\n";
  }
};

struct B_3 {
  ~B_3() {
    std::cout << "In B's d'tor\n";
  }
};

struct C_3 {
  void throw_int() {
    throw 42;
  }

  ~C_3() {
    std::cout << "In C's d'tor\n";
    try {
      B_3 b;
      throw_int();
    } catch (char e) {
      std::cout << "(C::~C) Caught char: " << e << "\n";
    }
  }
};

#define DECLARE(FUNC)                                \
  void FUNC() __attribute__((always_inline));        \
  void FUNC()

DECLARE(throw_char_3) {
  C_3 c;
  throw 'c';
}

DECLARE(cleanup_3) {
  A_3 a;
  try {
    B_3 b;
    throw_char_3();
  } catch (char e) {
    std::cout << "Caught char: " << e << "\n";
  }
}

void term() {
  printf("Inside the terminator\n");
  exit(EXIT_SUCCESS);
}

#ifdef ORIGINAL
int main() {
  std::set_terminate(term);
  A a;
  cleanup();
}
#else
void sub3()
{
  std::set_terminate(term);
  A_3 a;
  cleanup_3();
}
#endif
