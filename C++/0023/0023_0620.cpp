#include <cassert>

int i = 0;

struct B 
{
  virtual void h();
  virtual void g()noexcept;
  virtual void k()noexcept(true);
  virtual void m()throw();
};

void B::h(){}
void B::g()noexcept{}
void B::k()noexcept(true){}
void B::m()throw(){}

struct D:B 
{
   void h();
   void g()noexcept;
   void k()noexcept(true);
   void m()throw();
   int mem = 1;
};

void D::h()
{
   i++;
}
void D::g()noexcept
{
    i++;
}
void D::k()noexcept(true)
{
    i++;
}
void D:: m()throw()
{
    i++;
}

int main()
{
   D d;
   d.h();
   d.g();
   d.k();
   d.m();
   assert(i == 4);
   return 0;
}
