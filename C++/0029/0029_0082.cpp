#include <iostream>
#include "000.hpp"

int main()
{
  Array<int> array1(100);
  for (int i = 0; i < array1.size(); ++i) {
    array1(i) = i;
  }

  Array<int> array2(array1);
  for (int i = 0; i < array1.size(); ++i) {
    if (array1(i) != array2(i)) {
      std::cout << "NG" << std::endl;
      return 0;
    }
  }

  Array<int> array3;
  array3.resize(10, false);
  array3 = 10;
  for (int i = 0; i < array3.size(); ++i) {
    if (array3(i) != 10) {
      std::cout << "NG" << std::endl;
      return 0;
    }
  }

  array3 = array1;
  for (int i = 0; i < array3.size(); ++i) {
    if (array3(i) != array1(i)) {
      std::cout << "NG" << std::endl;
      return 0;
    }
  }

  for (int i = 0; i < array3.size(); ++i) {
    if (!array3.has_member(i)) {
      std::cout << "NG" << std::endl;
      return 0;
    }
  }

  std::cout << "OK" << std::endl;

  return 0;
}
