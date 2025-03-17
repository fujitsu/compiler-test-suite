#include <cassert>

template <typename... Args> int test0(Args &&...args) {
  return (1 + ... + args);
}

template <typename... Args> int test1(Args &&...args) {
  return (1 - ... - args);
}

template <typename... Args> int test2(Args &&...args) {
  return (1 * ... * args);
}

template <typename... Args> int test3(Args &&...args) {
  return (1 / ... / args);
}

template <typename... Args> int test4(Args &&...args) {
  return (1 % ... % args);
}

template <typename... Args> int test5(Args &&...args) {
  return (1 ^ ... ^ args);
}

template <typename... Args> int test6(Args &&...args) {
  return (1 & ... & args);
}

template <typename... Args> int test7(Args &&...args) {
  return (1 | ... | args);
}

template <typename... Args> int test8(Args &&...args) {
  return (1 << ... << args);
}

template <typename... Args> int test10(Args &&...args) {
  int a = 1;
  return (a += ... += args);
}

template <typename... Args> int test11(Args &&...args) {
  int a = 1;
  return (a -= ... -= args);
}

template <typename... Args> int test12(Args &&...args) {
  int a = 1;
  return (a *= ... *= args);
}

template <typename... Args> int test13(Args &&...args) {
  int a = 1;
  return (a /= ... /= args);
}

template <typename... Args> int test14(Args &&...args) {
  int a = 1;
  return (a %= ... %= args);
}

template <typename... Args> int test15(Args &&...args) {
  int a = 1;
  return (a ^= ... ^= args);
}

template <typename... Args> int test16(Args &&...args) {
  int a = 1;
  return (a &= ... &= args);
}

template <typename... Args> int test17(Args &&...args) {
  int a = 1;
  return (a |= ... |= args);
}

template <typename... Args> int test18(Args &&...args) {
  int a = 1;
  return (a <<= ... <<= args);
}

template <typename... Args> int test19(Args &&...args) {
  int a = 1;
  return (a >>= ... >>= args);
}

template <typename... Args> int test20(Args &&...args) {
  int a = 1;
  return (a = ... = args);
}

template <typename... Args> bool test21(Args &&...args) {
  int a = 1;
  return (a == ... == args);
}

template <typename... Args> bool test22(Args &&...args) {
  int a = 1;
  return (a != ... != args);
}

template <typename... Args> bool test24(Args &&...args) {
  return (1 < ... < args);
}

template <typename... Args> bool test25(Args &&...args) {
  return (1 <= ... <= args);
}

template <typename... Args> bool test26(Args &&...args) {
  return (1 >= ... >= args);
}

template <typename... Args> bool test27(Args &&...args) {
  return (1 && ... && args);
}

template <typename... Args> bool test28(Args &&...args) {
  return (1 || ... || args);
}

template <typename... Args> bool test29(Args &&...args) {
  return (1, ..., args);
}

class T {
public:
  bool fun(bool s) { return s; }
};

template <typename... Args> bool test30(Args &&...args) {
  T t;
  return (t.fun(true).*....*args);
}

template <typename... Args> bool test31(Args &&...args) {
  T *t = new T();
  return (t->fun(true)->*...->*args);
}

int main() {
  {
    int a = test0();
    assert(a == 1);
  }

  {
    int a = test1();
    assert(a == 1);
  }

  {
    int a = test2();
    assert(a == 1);
  }
  {
    int a = test3();
    assert(a == 1);
  }
  {
    int a = test4();
    assert(a == 1);
  }
  {
    int a = test5();
    assert(a == 1);
  }
  {
    int a = test6();
    assert(a == 1);
  }
  {
    int a = test7();
    assert(a == 1);
  }

  {
    int a = test8();
    assert(a == 1);
  }
  {
    int a = test10();
    assert(a == 1);
  }
  {
    int a = test11();
    assert(a == 1);
  }
  {
    int a = test12();
    assert(a == 1);
  }
  {
    int a = test13();
    assert(a == 1);
  }
  {
    int a = test14();
    assert(a == 1);
  }
  {
    int a = test15();
    assert(a == 1);
  }
  {
    int a = test16();
    assert(a == 1);
  }
  {
    int a = test17();
    assert(a == 1);
  }
  {
    int a = test18();
    assert(a == 1);
  }
  {
    int a = test19();
    assert(a == 1);
  }
  {
    int a = test20();
    assert(a == 1);
  }
  {
    bool a = test21();
    assert(a == true);
  }
  {
    bool a = test22();
    assert(a == true);
  }
  {
    bool a = test24();
    assert(a == true);
  }
  {
    bool a = test25();
    assert(a == true);
  }
  {
    bool a = test26();
    assert(a == true);
  }
  {
    bool a = test27();
    assert(a == true);
  }
  {
    bool a = test28();
    assert(a == true);
  }
  {
    bool a = test29();
    assert(a == true);
  }
  {
    T t;
    bool a = test30();
    assert(a == true);
  }
  {
    T *t;
    bool a = test31();
    assert(a == true);
  }
}
