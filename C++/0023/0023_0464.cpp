#include<memory>
#include <tuple>
#include <cassert>

struct E{
   explicit E(double b):value(b){};
   double value;
};

int main () 
{
  {
  std::allocator<int> a1;
  typedef std::pair<E,E> T0;
  typedef std::tuple<E,E> T1;
  T0 t0{2.1,3.1};
  T1 t1{std::allocator_arg,a1.allocate(10),t0};
  assert(std::get<0>(t1).value == 2.1&&std::get<1>(t1).value == 3.1);
  }
  {
  std::allocator<int> a2;
  typedef std::pair<bool,char> T3;
  typedef std::tuple<bool,char> T4;
  T3 t3(true,'t');
  T4 t4(std::allocator_arg,a2.allocate(3),t3);
  assert(std::get<0>(t4) == true&&std::get<1>(t4) == 't');
  }
}