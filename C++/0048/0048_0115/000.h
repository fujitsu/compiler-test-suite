

#include <iostream>


namespace NS2{
  template <typename T>
  void print();
}

namespace NS1{
  template <typename T>
  class C1{
    friend void NS2::print<int>();
  };
}

namespace NS2{
  template <typename T>
  void print(){
    std::cout << "C1 friend function print" << std::endl;
  }
}

