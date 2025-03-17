#include <iostream>
#include <cmath>

struct Add  {};
struct Sub  {};
struct Mult {};
struct Div  {};

class Complex
{
private:
  double r, i;

public:
  Complex(const double r_ = 0., const double i_ = 0.)
    : r(r_), i(i_) {}

  Complex(const Complex& rhs)
    : r(rhs.r), i(rhs.i) {}

  Complex(const Complex& a, const Complex& b, const Add&)
    : r(a.r + b.r), i(a.i + b.i) {}

  Complex(const Complex& a, const Complex& b, const Sub&)
    : r(a.r - b.r), i(a.i - b.i) {}

  Complex(const Complex& a, const Complex& b, const Mult&)
    : r(a.r * b.r - a.i * b.i), i(a.r * b.i + a.i * b.r) {}

  Complex(const Complex& a, const Complex& b, const Div&)
    : r((a.r * b.r + a.i * b.i) / (b.r * b.r + b.i * b.i)),
      i((a.i * b.r - a.r * b.i) / (b.r * b.r + b.i * b.i))
  {}

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

Complex operator * (const Complex& a, const Complex& b)
{
  return Complex(a, b, Mult());
}

Complex operator / (const Complex& a, const Complex& b)
{
  return Complex(a, b, Div());
}

bool check(Complex& c, Complex& d, Complex& e, Complex& f)
{
  if (std::fabs(c.get_real() - 1.61947) > 0.001)    { return false; }
  if (std::fabs(c.get_imag() - 3.97741) > 0.001)    { return false; }
  if (std::fabs(d.get_real() - 0.84965) > 0.001)    { return false; }
  if (std::fabs(d.get_imag() - 11.805)  > 0.01)    { return false; }
  if (std::fabs(e.get_real() - 31.36)   > 0.1)     { return false; }
  if (std::fabs(e.get_imag() - (-1.79443)) > 0.001) { return false; }
  if (std::fabs(f.get_real() - (-1.96621)) > 0.001) { return false; }
  if (std::fabs(f.get_imag() - 0.508806) > 0.001)   { return false; }
  return true;
}

int main()
{
  Complex a(1.23456, 7.89123), b(0.38491, -3.91382);
  Complex c = a + b;
  Complex d = a - b;
  Complex e = a * b;
  Complex f = a / b;

  if (check(c, d, e, f)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
