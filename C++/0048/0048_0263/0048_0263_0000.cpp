#include <iostream>
#include <stdexcept>
#include "000.hpp"

static void pushTest()
{
  try {
    Stack<int, 10> si;

    for (int i = 0; i < 11; ++i) {
      si.push(i);
    }
  }
  catch (std::exception const& ex) {
    std::cout << ex.what() << std::endl;
  }
}

static void popTest()
{
  try {
    Stack<int, 10> si;

    for (int i = 0; i < 10; ++i) {
      si.push(i);
    }

    for (int i = 0; i < 10; ++i) {
      si.pop();
    }

    si.pop();
  }
  catch (std::exception const& ex) {
    std::cout << ex.what() << std::endl;
  }
}

int main()
{
  pushTest();
  popTest();
  return 0;
}
