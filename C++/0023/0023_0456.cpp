#include<cassert>
#include<tuple>

int main () 
{
   {
   const std::tuple<bool> t1{true};
   std::tuple<bool> t2{t1};
   assert(std::get<0>(t2) == true);
   }
   {
   const std::tuple<int> t3(3);
   std::tuple<int> t4(t3);
   assert(std::get<0>(t4) == 3);
   }
}