#include <cassert>
#include <utility>

struct Ex{ 
   constexpr explicit Ex(bool b):value(b){};
   bool value;
 };

struct E{ 
   constexpr explicit E(int i):value(i){};
   int value;
 };

int main () 
{
   {
    constexpr std::pair<Ex,E> p{true,43};
    assert(p.first.value == true&&p.second.value == 43);
   }
   {
    constexpr std::pair<double,bool> q(3.7,true);
    assert(q.first == 3.7&&q.second == true);
   }
}