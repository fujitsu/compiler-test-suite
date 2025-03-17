#include <iostream>
#include <cmath>

class Complex
{
private:
  double r, i;

public:
  Complex(const double r_ = 0., const double i_ = 0.)
    : r(r_), i(i_) {}

  Complex(const Complex& rhs)
    : r(rhs.r), i(rhs.i) {}

  Complex& operator += (const Complex& rhs)
  {
    r += rhs.r;
    i += rhs.i;
    return *this;
  }

  Complex& operator -= (const Complex& rhs)
  {
    r -= rhs.r;
    i -= rhs.i;
    return *this;
  }

  Complex& operator *= (const Complex& rhs)
  {
    float r_ = r * rhs.r - i * rhs.i;
    float i_ = r * rhs.i + i * rhs.r;
    r = r_;
    i = i_;
    return *this;
  }

  Complex& operator /= (const Complex& rhs)
  {
    float r_ = ((r * rhs.r + i * rhs.i) / (rhs.r * rhs.r + rhs.i * rhs.i));
    float i_ = ((i * rhs.r - r * rhs.i) / (rhs.r * rhs.r + rhs.i * rhs.i));
    r = r_;
    i = i_;
    return *this;
  }

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
  return Complex(a) += b;
}

Complex operator - (const Complex& a, const Complex& b)
{
  return Complex(a) -= b;
}

Complex operator * (const Complex& a, const Complex& b)
{
  return Complex(a) *= b;
}

Complex operator / (const Complex& a, const Complex& b)
{
  return Complex(a) /= b;
}

bool check(Complex& c, Complex& d, Complex& e, Complex& f)
{
  if (fabs(c.get_real() - 1.61947) >= 0.01)    { return false; }
  if (fabs(c.get_imag() - 3.97741) >= 0.01)    { return false; }
  if (fabs(d.get_real() - 0.84965) >= 0.01)    { return false; }
  if (fabs(d.get_imag() - 11.805)  >= 0.01)    { return false; }
  if (fabs(e.get_real() - 31.36)   >= 0.1)     { return false; }
  if (fabs(e.get_imag() - (-1.79443)) >= 0.01) { return false; }
  if (fabs(f.get_real() - (-1.96621)) >= 0.01) { return false; }
  if (fabs(f.get_imag() - 0.508806) >= 0.01)   { return false; }
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
