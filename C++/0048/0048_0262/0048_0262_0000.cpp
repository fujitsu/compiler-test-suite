#include <iostream>
#include <stdexcept>
#include <deque>

#include "000.hpp"

int main()
{
  try {
    Stack<int, std::deque<int> > si;

    for (int i = 0; i < 10; ++i) {
      si.push(i);
    }

    for (int i = 0; i < 10; ++i) {
      std::cout << si.top() << std::endl;
      si.pop();
    }

    si.pop();
  }
  catch (std::exception const& ex) {
    std::cout << ex.what() << std::endl;
  }
}
