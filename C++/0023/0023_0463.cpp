#include <cassert>
#include <tuple>
#include <memory>

struct E{
   explicit E(int i):value(i){};
   int value;
};

int main () 
{
   {
   std::allocator< int> a1;
   std::tuple<E> t1{23};
   std::tuple<E> t2{std::allocator_arg,a1.allocate(10),std::move(t1)};
   assert(std::get<0>(t2).value == 23);
   }
   {
   std::allocator< int> a2;
   std::tuple<char> t3('d');
   std::tuple<char> t4(std::allocator_arg,a2.allocate(6),std::move(t3));
   assert(std::get<0>(t4) == 'd');
   }
}