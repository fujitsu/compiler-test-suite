

#include <iostream>

class C1{
  public:
    template <typename T>
    class Inner1{
      public:
        void print(){
          std::cout << "Inner1 print" << std::endl;
        }
    };
    template <typename T>
    class Inner2;
};

template <typename T>
class C1::Inner2{
  public:
    void print(){
      std::cout << "Inner2 print" << std::endl;
    }
};
