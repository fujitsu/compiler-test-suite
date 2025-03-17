#include <tuple>
#include <cassert>

int main () 
{
   {
    constexpr std::tuple<const int,const bool> t{2,true};
    assert(std::get<0>(t) == 2&&std::get<1>(t) == true);
   }
   {
    constexpr std::tuple<const bool,const bool> p(false,true);
    assert(std::get<0>(p) == false&&std::get<1>(p) == true);
   }
}