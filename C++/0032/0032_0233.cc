#include <iostream>
struct tag {
  char b0:1;
  char b1:1;
  int  a;
  char b2:2;
  char b3:5;
} bit = { 1, 1, 10, 3, 0 };
int main()
{
#if __INTEL_COMPILER
  if (bit.b2 == -1 && bit.b3 == 0) {
#else
  if (bit.b2 == -1 && bit.b3 == 0) {
#endif
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }
  return 0;
}
