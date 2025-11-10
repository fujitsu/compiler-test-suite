#include <cstdio>

// Extension of friend declaration
template <typename Derived>
class B1_1
{
  int m_val;

  friend Derived;

  B1_1():
    m_val(3) {}
};

class B1: public B1_1<B1>
{
public:
  bool check()
  {
    return (m_val == 3);
  }
};

void sub1()
{
  B1 b1;
  if (!b1.check()) {
    std::puts("NG");
    return;
  }
  
  std::puts("OK");
}
