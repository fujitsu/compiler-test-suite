
#include <iostream>

namespace NS1{
  template <typename T>
  class C1{
    public:
      void member_func();
      class member_class;
      enum struct member_enum : int;
      static int static_data_member;

      template<typename U>
      class member_template;
  };
}

template<typename T>
void NS1::C1<T>::member_func(){
  std::cout << "C1 member_func" << std::endl;
}

template<typename T>
class NS1::C1<T>::member_class{
  public:
    void hello(){
      std::cout << "C1 member_class hello" << std::endl;
    }
};

template <typename T>
enum struct NS1::C1<T>::member_enum : int {
  typeA = 1, typeB, typeC
};

template <typename T>
int NS1::C1<T>::static_data_member;

template <typename T>
template <typename U>
class NS1::C1<T>::member_template{
  public:
    void hello(){
      std::cout << "C1 member_template hello" << std::endl;
    }
};
