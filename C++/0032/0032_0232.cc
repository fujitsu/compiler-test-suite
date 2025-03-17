#include <iostream>

struct tag {
  char b0:1;
  char b1:1;
} bit = { 1, 0 };

int main()
{
#if __INTEL_COMPILER
  if (bit.b0 == -1) {
#else 
  if (bit.b0 == -1) {
#endif
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  if (bit.b1 == 0) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
