#include <iostream>

struct Sample{
  typedef int value_type;
};

template<class T>
void func(typename T::value_type*){
  std::cout << "A" << std::endl;
}

template<class T>
void func(...){ std::cout << "other" << std::endl; }

int main(void){
  func<Sample>(0);
  func<int>(0);

  return 0;
}
