#include "000.h"
#include <iostream>


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



template <typename T>
using A = C2<int>;


void func(){
  C2<int> c2(5);
  C1<C2> c1(c2);
  A<double> a(7);
  C1<A> c1_2(a);
  std::cout << "c1 member = " << c1.getMember() << std::endl;
  std::cout << "c1_2 member = " << c1_2.getMember() << std::endl;
}
