#include <cstdio>


class B1_1
{
public:
  B1_1():
    m_val(0) {}
  
  virtual void func1() final
  {
    ++m_val;
  }
  
  virtual void func2()
  {
    --m_val;
  }
  
  int m_val;
};

class B1: public B1_1
{
public:
  B1() {}
  
  void func2() override
  {
    ++m_val;
  }

  bool check()
  {
    return (m_val == 2);
  }
};

static void b1_func(B1 *b5)
{
  b5->func1();
  b5->func2();
}

void sub1()
{
  B1 b1;
  b1_func(&b1);
  if (!b1.check()) {
    std::puts("NG");
    return;
  }

  std::puts("OK");
}
