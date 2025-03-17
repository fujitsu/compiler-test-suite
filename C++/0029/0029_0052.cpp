#include <iostream>

class RVO
{
public:
  int fst, snd;

  RVO() {}
  explicit RVO(int f, int s) : fst(f), snd(s) {}

  RVO operator + (const RVO& rhs)
  {
    int tmp1 = fst + rhs.fst;
    int tmp2 = snd + rhs.snd;
    return RVO(tmp1, tmp2);
  }
};

int main()
{
  RVO a(2, 4), b(3, 5);
  RVO c = a + b;
  std::cout << c.fst << std::endl;
  std::cout << c.snd << std::endl;
  return 0;
}
