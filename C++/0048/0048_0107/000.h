

#include <iostream>

template <typename T>
class C2{
  public:
    void print(){
      std::cout << "C1 friend class C2" << std::endl;
    }
};

template <typename T>
class C1{
  public:
    friend class C2<int>;
};

