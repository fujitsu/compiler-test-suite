#include <iostream>

#define ntimes 200
#define LEN 32000

void va(void)
#ifdef __GNUC__
    __attribute__((noinline))
#endif
    ;

#ifdef __GNUC__
__attribute__((aligned(16)))
#endif
float a[LEN],
    b[LEN];

int main() {
  for (int i = 0; i < LEN; ++i) {
    b[i] = static_cast<float>(i);
  }

  va();

  for (int i = 0; i < LEN; ++i) {
    if (a[i] != b[i]) {
      std::cout << "NG" << std::endl;
      std::cout << "a[" << i << "] = " << a[i] << std::endl;
      std::cout << "b[" << i << "] = " << b[i] << std::endl;
      return 0;
    }
  }

  std::cout << "OK" << std::endl;
  return 0;
}

void va() {
  for (int nl = 0; nl < ntimes * 10; ++nl) {

    for (int i = 0; i < LEN; ++i) {
      a[i] = b[i];
    }
  }
}
