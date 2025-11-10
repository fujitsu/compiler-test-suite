#include <iostream>
#include <string>
#include "000.hpp"

int main()
{
  try {
    Stack<std::string> ss;
    
    ss.push("test1");
    ss.push("test2");
    ss.push("test3");

    std::cout << ss.top() << std::endl;
    ss.pop();

    std::cout << ss.top() << std::endl;
    ss.pop();

    std::cout << ss.top() << std::endl;
    ss.pop();

    ss.pop();
  }
  catch (std::exception const& ex) {
    std::cout << ex.what() << std::endl;
  }

  return 0;
}
