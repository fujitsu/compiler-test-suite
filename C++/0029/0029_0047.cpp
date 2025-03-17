#include <iostream>

#if __INTEL_COMPILER >= 1400

const int max = 1000;
const unsigned int master = 500500;

#elif __GNUC__
const int max = 500;
const unsigned int master = 125250;

#else
const int max = 10;
const unsigned int master = 55;

#endif

template <int N> unsigned int sum() { return N + sum<N - 1>(); }

template <> unsigned int sum<0>() { return 0; }

int main() {
  unsigned int value = sum<max>();

  if (value == master) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << value << std::endl;
    std::cout << "NG" << std::endl;
  }

  return 0;
}
