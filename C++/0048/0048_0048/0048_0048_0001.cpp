#include <iostream>

bool func1(void *p)
{
  return (p == nullptr);
}

#define CODE(Ty, N)                       \
  {                                       \
    Ty *p = nullptr;                      \
    if (!func1(p)) {                      \
      std::cout << "NG " #N << std::endl; \
      return;                             \
    }                                     \
  }

void sub1()
{
  CODE(char, 1)
  CODE(unsigned char, 2)
  CODE(short int, 3)
  CODE(unsigned short int, 4)
  CODE(int, 5)
  CODE(unsigned int, 6)
  CODE(long int, 7)
  CODE(unsigned long int, 8)
  CODE(float, 9)
  CODE(double, 10)
  CODE(void, 11)
  std::cout << "OK" << std::endl;
}
