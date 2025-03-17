#include <cmath>

template <typename _Tp, typename _Up = _Tp>
void test_type()
{
  typedef _Tp fp_type_one;
  typedef _Up fp_type_two;
  fp_type_one f1 = 1.0;
  fp_type_two f2 = 3.0;

  std::fpclassify(f1);
  std::isfinite(f2);
  std::isinf(f1);
  std::isnan(f2);
  std::isnormal(f1);
  std::signbit(f2);
  std::isgreater(f1, f2);
  std::isgreaterequal(f1, f2);
  std::isless(f1, f2);
  std::islessequal(f1, f2);
  std::islessgreater(f1, f2);
  std::isunordered(f1, f2);
}

int main()
{
  test_type<float>();
  test_type<double>();
  test_type<long double>();
  test_type<float, double>();
  test_type<float, long double>();
  test_type<double, float>();
  test_type<double, long double>();
  test_type<long double, float>();
  test_type<long double, double>();
  return 0;
}
