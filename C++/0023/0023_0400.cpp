#include <cassert>

class[[ using BB:opt(1)]][[ using CC:debug]] A{
  public:
    int mem = 8;
};

class[[CC::debug]][[BB::opt(1)]] B{
  public:
    double val = 4.9;
};

int main()
{
   {
    A a;
    assert(a.mem == 8);
   }
   {
    B b;
    assert(b.val == 4.9);
   }

}