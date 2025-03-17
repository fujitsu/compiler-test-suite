#include <cassert>

int i = 0;
struct B 
{
  virtual void h();
};

void B::h(){}

struct D:B 
{
   void h() noexcept;
   int mem = 1;
};

void D::h()noexcept
{
   i++;
}

int main()
{
   D d;
   d.h();
   assert(i == 1);
   return 0;
}
