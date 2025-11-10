#include <iostream>
#include <cstdlib>

template<class ...Types>
struct count {
  static const std::size_t value = sizeof...(Types);
};
int main()
{
  count<int, int, int> c;
  if (c.value == 3) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }
}
