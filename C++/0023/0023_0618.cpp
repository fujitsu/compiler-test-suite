#include <cassert>

struct B 
{
   virtual void h() = delete;
};

struct D:B 
{
   void h() noexcept = delete;
   int mem = 1;
};

int main()
{
   D d;
   assert(d.mem == 1);
   return 0;
}
