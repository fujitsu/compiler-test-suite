#include <iostream>
#define TEST_002(index)                                                        \
  {                                                                            \
    __label__ test002_1;                                                       \
    __label__ test002_2;                                                       \
    if (index == 1)                                                            \
      goto test002_1;                                                          \
    if (index == 2)                                                            \
      goto test002_2;                                                          \
    i++;                                                                       \
  test002_1:                                                                   \
    i++;                                                                       \
  test002_2:                                                                   \
    i++;                                                                       \
  }

class testtest {
public:
  void test002() {
    {
      int i = 0;
      TEST_002(2)
      if (i == 1) {
        std::cout << "*OK*\n";
      } else {
        std::cout << "*NG*\n";
      }
      return;
    }
  test002_1:
  test002_2:
    std::cout << "*NG*\n";
  }
  void test003(int index, int ans) {
    {
      {
        __label__ test003_1, test003_2, test003_3;
        int i = 0;
        if (index == 1)
          goto test003_1;
        if (index == 2)
          goto test003_2;
        if (index == 3)
          goto test003_3;
        i--;
      test003_1:
        i++;
      test003_2:
        i++;
      test003_3:
        i++;
        if (i == ans) {
          std::cout << "*OK*\n";
        } else {
          std::cout << "*NG*\n";
        }
      }
    }
  }
  void test005() {
    int val = 0;
    if (val == 0) {
      __label__ test005_1;
      __label__ test005_2;
      goto test005_1;
    test005_2:
      val++;
    test005_1:
      val++;
    }
    if (val == 1) {
      std::cout << "*OK*\n";
    } else {
      std::cout << "*NG*\n";
    }
    return;
  }
  void test006() {
    int i = 0;
    for (i = 0; i < 10; i++) {
      __label__ test006_1, test006_2, test006_3;
      if (i == 5) {
        goto test006_1;
      }
      continue;
    test006_1:
      break;
    test006_2:
    test006_3:
      continue;
    }
    if (i == 5) {
      std::cout << "*OK*\n";
    } else {
      std::cout << "*NG*\n";
    }
    return;
  }
  void test008() {
    int i = 0;
    do {
      __label__ test008_1;
      if (i == 5) {
        goto test008_1;
      }
      i++;
      continue;
    test008_1:
      break;
    } while (i < 10);
    if (i == 5) {
      std::cout << "*OK*\n";
    } else {
      std::cout << "*NG*\n";
    }
    return;
  test008_1:
    std::cout << "*NG*\n";
    return;
  }
};
int main() {
  class testtest t;
  t.test002();
  t.test003(2, 2);
  t.test005();
  t.test006();
  t.test008();
  return 0;
}
