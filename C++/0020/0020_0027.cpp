#include <cassert>
#include <functional>

struct Myplace
{
};

template <int _B, class Expr>
void test(const Expr &)
{
  static_assert(std::is_placeholder<Expr>::value == _B, "");
}

int main()
{
  test<1>(std::placeholders::_1);
  test<2>(std::placeholders::_2);
  test<3>(std::placeholders::_3);
  test<4>(std::placeholders::_4);
  test<5>(std::placeholders::_5);
  test<6>(std::placeholders::_6);
  test<7>(std::placeholders::_7);
  test<8>(std::placeholders::_8);
  test<9>(std::placeholders::_9);
  test<10>(std::placeholders::_10);

  test<0>(2.2);
  test<0>('a');
  test<0>(Myplace());

  return 0;
}
