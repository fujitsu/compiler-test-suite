#include <cstdio>
#include <cstdlib>
#include "000.hpp"

class B1
{
public:
  B1():
    m_val(0) {}

  B1(int val):
    m_val(val) {}

  void *operator new (std::size_t size);
  void *operator new [] (std::size_t size);

  void operator delete (void *p);
  void operator delete [] (void *p);

  void setVal(int val) { m_val = val; }
  int getVal() const { return m_val; }

private:
  int m_val;
};

void *B1::operator new (std::size_t size)
{
  return std::malloc(size);
}

void *B1::operator new [] (std::size_t size)
{
  return std::malloc(size);
}

void B1::operator delete (void *p)
{
  std::free(p);
}

void B1::operator delete [] (void *p)
{
  std::free(p);
}

void sub1()
{
  B1 *b1 = new B1(3);
  if (b1->getVal() != 3) {
    std::puts("NG1");
  }
  
  delete b1;
}

void sub2()
{
  B1 *b1 = new B1[5];
  for (int i = 0; i < 5; ++i) {
    b1[i].setVal(i);
  }

  for (int i = 0; i < 5; ++i) {
    if (b1[i].getVal() != i) {
      std::puts("NG2");
      return;
    }
  }
  
  delete [] b1;

  std::puts("OK");
}
