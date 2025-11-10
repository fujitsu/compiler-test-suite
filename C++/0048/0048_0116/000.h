

#include <iostream>

namespace NS1{
  template <typename T>
  class C2{
    public:
      void print(){
        std::cout << "C1 friend class C2" << std::endl;
      }
  };
}

namespace NS2{
  template <typename T>
  class C1{
    public:
      friend class NS1::C2<int>;
  };
}

