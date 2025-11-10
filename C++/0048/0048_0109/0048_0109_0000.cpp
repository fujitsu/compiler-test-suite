#include "000.h"
#include <iostream>


namespace NS2{
  template<typename T>
  class C2{
    public:
      C2(T member) : member(member){}

      T getMember(){
        return member;
      }

    private:
      T member;
  };
}


namespace NS3{
  template <typename T>
  using A = NS2::C2<int>;
}


void func(){
  NS2::C2<int> c2(5);
  NS1::C1<NS2::C2> c1(c2);
  NS3::A<double> a(7);
  NS1::C1<NS3::A> c1_2(a);
  std::cout << "c1 member = " << c1.getMember() << std::endl;
  std::cout << "c1_2 member = " << c1_2.getMember() << std::endl;
}
