#include<cassert>
#include<tuple>

struct Ex{
   int value;
   explicit constexpr Ex(int x):value(x){};
};


int main () 
{
   {
   std::tuple<Ex> t1{42};
   std::tuple<Ex> t2{std::move(t1)};
   assert(std::get<0>(t2).value == 42);
   }
   { 
   std::tuple<bool> t3(true);
   std::tuple<bool> t4(std::move(t3));
   assert(std::get<0>(t4) == true); 
  }  
}