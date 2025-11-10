#include <iostream>
#include <stdexcept>
#include <vector>

#include "000.hpp"

int main()
{
  try {
    Stack<int, std::vector> sv;

    for (int i = 0; i < 10; ++i) {
      sv.push(i);
    }

    for (int i = 0; i < 10; ++i) {
      std::cout << sv.top() << std::endl;
      sv.pop();
    }

    sv.pop();
  }
  catch (std::exception const& ex) {
    std::cout << ex.what() << std::endl;
  }

  return 0;
}
