#include <cassert>
#include <utility>

struct Ex{
   constexpr explicit Ex(int x) : value(x) {};
   int value;
};

int main()
{
  {
    constexpr std::pair<Ex,double> p{3,2.3};
    assert(p.first.value == 3&&p.second == 2.3);
  }
  {
    constexpr std::pair<int,int> q(2,4);
    assert(q.first == 2&&q.second == 4);
  }
}