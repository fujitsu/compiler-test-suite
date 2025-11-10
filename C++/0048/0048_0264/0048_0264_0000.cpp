#include <iostream>
#include <stdexcept>

#include "000.hpp"

int main()
{
  try {
    Stack<int> si;
    Stack<double> sd;

    for (int i = 0; i < 10; ++i) {
      sd.push(static_cast<double>(i) + 1.2);
    }

    si = sd;

    for (int i = 0; i < 10; ++i) {
      std::cout << si.top() << std::endl;
      si.pop();
    }

    si.pop();
  }
  catch (std::exception const& ex) {
    std::cout << ex.what() << std::endl;
  }

  return 0;
}
