#include <cassert>
#include <tuple>
#include <memory>

int main () 
{
   {
   std::allocator<int> a1;  
   std::tuple<int, double> t{std::allocator_arg, a1.allocate(10), 23,2.3};
   assert(std::get<0>(t) == 23&&std::get<1>(t) == 2.3);
   }
   { 
   std::allocator<int> a2;  
   std::tuple<int, bool> t1(std::allocator_arg, a2.allocate(1), 23,true);
   assert(std::get<0>(t1) == 23&&std::get<1>(t1) == true);
   }
}