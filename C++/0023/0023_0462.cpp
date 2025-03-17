#include <tuple>
#include <cassert>
#include <memory>

struct E{
  explicit E(int x):value(x){};
  int value;
};

struct Ex{
  explicit Ex(bool b):value(b){};
  bool value;
};

int main () 
{
   {
    std::allocator<int> a1;
    std::tuple<E,Ex> t1{34,false};
    std::tuple<E,Ex> t2{std::allocator_arg, a1.allocate(10),t1};
    assert(std::get<0>(t2).value == 34&&std::get<1>(t2).value == false);
   }
   {
    std::allocator<int> a2;
    std::tuple<int,bool> t3(5,true);
    std::tuple<int,bool> t4(std::allocator_arg, a2.allocate(8),t3);
    assert(std::get<0>(t4) == 5&&std::get<1>(t4) == true);
   }
}