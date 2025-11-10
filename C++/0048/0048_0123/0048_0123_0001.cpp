#include <cstdio>
#include "000.hpp"

namespace MySpace
{
  class F1
  {
    friend class B1;
    
  public:
    F1():
      m_c('1'), m_i(2) {}
    
  private:
    char m_c;
    int m_i;
    
    void update()
    {
      ++m_c, ++m_i;
    }
    
    void show()
    {
      std::printf("%c %d\n", m_c, m_i);
    }
  };
  
  class B1
  {
  public:
    void update(F1& f1)
    {
      f1.update();
    }
    
    void show(F1& f1)
    {
      f1.show();
    }
  };
}  

void sub1()
{
  MySpace::F1 f1;
  MySpace::B1 b1;

  using namespace MySpace;

  b1.update(f1);
  b1.show(f1);

  b1.update(f1);
  b1.show(f1);
}
