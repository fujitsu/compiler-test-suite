#include<cassert>
#include<tuple>
#include<memory>

struct E{
   explicit E(int i):value(i){};
   int value;
};

int main () 
{
  {
   std::allocator<int> a1;
   typedef std::pair<E,E> T0;
   typedef std::tuple<E,E> T1;
   T0 t0{2,3};
   T1 t1{std::allocator_arg,a1.allocate(10),std::move(t0)};
   assert(std::get<0>(t1).value == 2&&std::get<1>(t1).value == 3);
   }
   {
   std::allocator<int> a2;
   typedef std::pair<int,char> T3;
   typedef std::tuple<int,char> T4;
   T3 t3(2,'e');
   T4 t4(std::allocator_arg,a2.allocate(1),std::move(t3));
   assert(std::get<0>(t4) == 2&&std::get<1>(t4) == 'e');
   }
}