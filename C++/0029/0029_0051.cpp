#include <iostream>

class RVO {
public:
  int m_x;

  RVO() {}
  explicit RVO(int x) : m_x(x) {}
};

static RVO add(RVO r1, RVO r2) { return RVO(r1.m_x + r2.m_x); }

int main() {
  RVO r1(1), r2(2);
  RVO r3 = add(r1, r2);
  std::cout << r3.m_x << std::endl;
  return 0;
}
