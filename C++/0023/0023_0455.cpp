#include<cassert>
#include<tuple>

struct Ex{
   int value;
   explicit constexpr Ex(int i):value(i){};
};

int main () 
{
   {
   constexpr std::tuple<Ex,Ex> t{23,34};
   assert(std::get<0>(t).value == 23&&std::get<1>(t).value == 34);
   }
   {
   constexpr std::tuple<int,int> t1(2,3);
   assert(std::get<0>(t1) == 2&&std::get<1>(t1) == 3);
   }
}