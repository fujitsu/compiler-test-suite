#include<utility>
#include<cassert>

struct Ex{ 
   constexpr explicit Ex(int x):value(x){};
   int value;
 };

struct E{ 
   constexpr explicit E(bool s):value(s){};
   bool value;
 };

int main () 
{
  {
   constexpr std::pair<Ex,E> p1{42,false};
   constexpr std::pair<Ex,E> p2{std::move(p1)};
   assert(p2.first.value == 42&&p2.second.value == false);
  }
  {
  constexpr std::pair<bool,bool> q1(true,false);
  constexpr std::pair<bool,bool> q2(std::move(q1));
  assert(q2.first == true&&q2.second == false);
  }
}