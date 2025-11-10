

#include <iostream>

template <typename T>
class C1{
  friend void print();
};

template <typename T>
void print(){
  std::cout << "C1 friend function print" << std::endl;
}



