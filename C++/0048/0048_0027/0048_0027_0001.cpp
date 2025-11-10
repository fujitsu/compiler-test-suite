#include <cstdio>


class B1
{
public:
  B1() = delete;
  ~B1() = default;

  B1(int val) : m_val(val) {}

  B1(const B1&) = delete;
  B1& operator = (const B1&) = delete;

  B1(B1&&) = default;
  B1& operator = (const B1&&) = delete;

  bool check(int val)
  {
    return (m_val == val);
  }

private:
  int m_val;
};

void sub1()
{
  B1 b11(3);
  if (!b11.check(3)) {
    std::puts("NG1");
    return;
  }
  
  B1&& b12(4);
  B1& b13 = b12;
  if (!b13.check(4)) {
    std::puts("NG2");
    return;
  }
  
  std::puts("OK");
}
