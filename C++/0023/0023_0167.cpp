#include <cassert>

struct s2 
{
  double ohseven = 0.007;
  auto f()
  {
    return [=]
    {
        return [*this]
        {
            return ohseven;
        };
    }();
  }
};

int main()
{
   s2 s;
   auto oh = s.f();
   assert(oh() == 0.007);
}
