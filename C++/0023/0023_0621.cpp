#include <cassert>

struct B 
{
  virtual void h() = delete;
  virtual void g()noexcept = delete;
  virtual void k()noexcept(true) = delete;
  virtual void m()throw() = delete;
};

struct D:B 
{
   void h() = delete;
   void g()noexcept = delete;
   void k()noexcept(true) = delete;
   void m()throw() = delete;
   int mem = 1;
};


int main()
{
   D d;
   assert(d.mem == 1);
   return 0;
}
