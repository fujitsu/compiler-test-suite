#include <cassert>

class[[ using CC:opt(1)]][[ using CC:debug]] A{
  public:
    int mem = 1;
};

class[[CC::debug]][[CC::opt(1)]] B{
  public:
    double val = 4.5;
};

int main()
{
   {
    A a;
    assert(a.mem == 1);
   }
   {
    B b;
    assert(b.val == 4.5);
   }

}