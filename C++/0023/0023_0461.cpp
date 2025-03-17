#include <cassert>
#include <tuple>
#include <memory>

int main () 
{
     {
     std::tuple<int,int> pmd1(42, 32);
     std::allocator<int> a1;  
     std::tuple<int,int> t(std::allocator_arg, a1.allocate(10), pmd1);
     assert(std::get<0>(t) == 42&&std::get<1>(t) == 32);
     }
     {
     std::tuple<bool,int> pmd2{true, 32};
     std::allocator<int> a2;  
     std::tuple<bool,int> t1{std::allocator_arg, a2.allocate(6), pmd2};
     assert(std::get<0>(t1) == true&&std::get<1>(t1) == 32);
    }
}