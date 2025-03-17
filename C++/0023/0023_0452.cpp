#include <utility>
#include <cassert>

struct Ex{ 
   constexpr explicit Ex(int x):value(x){};
   int value;
};

struct E{ 
   constexpr explicit E(bool b):value(b){};
   bool value;
};

int main () 
{
   {
    using P1 = std::pair<Ex,E>;
   using P2 = std::pair<Ex,E>;
   constexpr P1 p1{3,true};
   constexpr P2 p2{p1};
   assert(p2.first.value == 3&&p2.second.value == true);
   }
   {
   using Q1 = std::pair<int,double>;
   using Q2 = std::pair<int,double>;
   constexpr Q1 q1(3,4.5);
   constexpr Q2 q2(q1);
   assert(q2.first == 3&&q2.second == 4.5);
   }
}