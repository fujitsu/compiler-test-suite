#include<cassert>
#include<tuple>

struct E{
   int value;
   explicit constexpr E(char c):value(c){};
};

int main () 
{
  {
  typedef std::pair<E,int> T0;
  typedef std::tuple<E,int> T1;
  T0 t0{'a',3};
  T1 t1{std::move(t0)};
  assert(std::get<0>(t1).value == 'a'&&std::get<1>(t1) == 3);
  }
  {
   typedef std::pair<bool,int> T3;
   typedef std::tuple<bool,int> T4;
   T3 t3(true,3);
   T4 t4(std::move(t3));
   assert(std::get<0>(t4) == true&&std::get<1>(t4) == 3);
   }
}