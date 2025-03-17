#include <iostream>
#include <cmath>

struct Add {};
struct Sub {};

class Complex
{
private:
  double r, i;

public:
  Complex(double r_ = 0., double i_ = 0.)
    : r(r_), i(i_) {}

  Complex(const Complex& rhs)
    : r(rhs.r), i(rhs.i) {}

  Complex(const Complex& a, const Complex& b, const Add&)
    : r(a.r + b.r), i(a.i + b.i) {}

  Complex(const Complex& a, const Complex& b, const Sub&)
    : r(a.r - b.r), i(a.i - b.i) {}

  double get_real() const
  {
    return r;
  }

  double get_imag() const
  {
    return i;
  }
};

Complex operator + (const Complex& a, const Complex& b)
{
  return Complex(a, b, Add());
}

Complex operator - (const Complex& a, const Complex& b)
{
  return Complex(a, b, Sub());
}

bool check(Complex& c, Complex& d)
{
  if (std::fabs(c.get_real() - 1.61947) >= 0.01) { return false; }
  if (std::fabs(c.get_imag() - 3.97741) >= 0.01) { return false; }
  if (std::fabs(d.get_real() - 0.84965) >= 0.01) { return false; }
  if (std::fabs(d.get_imag() - 11.805)  >= 0.01) { return false; }
  return true;
}

int main()
{
  Complex a(1.23456, 7.89123), b(0.38491, -3.91382);
  Complex c = a + b;
  Complex d = a - b;

  if (check(c, d)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
