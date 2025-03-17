#include <cassert>

class[[ using CC:opt(1)]] A{
  public:
    int mem = 1;
};

class[[ CC::debug ]] B{
  public:
    double dou = 1.34;
};

int main()
{
   {
    A a;
    assert(a.mem == 1);
   }
   {
    B b;
    assert(b.dou == 1.34);
   }
}