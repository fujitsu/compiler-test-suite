#include <cmath>
#include <iostream>

class Complex {
private:
  double r, i;

public:
  Complex() {}
  explicit Complex(double _r, double _i) : r(_r), i(_i) {}
  ~Complex() {}

  double getReal() const;
  double getImag() const;

  Complex operator+(const Complex &rhs) const;
  Complex operator-(const Complex &rhs) const;
  Complex operator*(const Complex &rhs) const;
  Complex operator/(const Complex &rhs) const;
};

double Complex::getReal() const { return r; }

double Complex::getImag() const { return i; }

Complex Complex::operator+(const Complex &rhs) const {
  Complex tmp;
  tmp.r = r + rhs.r;
  tmp.i = i + rhs.i;
  return tmp;
}

Complex Complex::operator-(const Complex &rhs) const {
  Complex tmp;
  tmp.r = r - rhs.r;
  tmp.i = i - rhs.i;
  return tmp;
}

Complex Complex::operator*(const Complex &rhs) const {
  Complex tmp;
  tmp.r = r * rhs.r - i * rhs.i;
  tmp.i = r * rhs.i + i * rhs.r;
  return tmp;
}

Complex Complex::operator/(const Complex &rhs) const {
  Complex tmp;
  tmp.r = (r * rhs.r + i * rhs.i) / (rhs.r * rhs.r + rhs.i * rhs.i);
  tmp.i = (-r * rhs.i + i * rhs.r) / (rhs.r * rhs.r + rhs.i * rhs.i);
  return tmp;
}

void print(Complex z)
#ifdef __GNUC__
    __attribute__((noinline))
#endif
    ;

int main() {
  Complex x(1.131926, 2.03183), y(1.083719, 2.981924);
  Complex z1 = x + y;
  Complex z2 = x - y;
  Complex z3 = x * y;
  Complex z4 = x / y;

  if (std::fabs(z1.getReal() - 2.21565) > 0.0005) {
    std::cout << "NG1" << std::endl;
  } else if (std::fabs(z1.getImag() - 5.01375) > 0.0005) {
    std::cout << "NG2" << std::endl;
  } else if (std::fabs(z2.getReal() - 0.048207) > 0.00005) {
    std::cout << "NG3" << std::endl;
  } else if (std::fabs(z2.getImag() - (-0.950094)) > 0.00005) {
    std::cout << "NG4" << std::endl;
  } else if (std::fabs(z3.getReal() - (-4.83207)) > 0.0005) {
    std::cout << "NG5" << std::endl;
  } else if (std::fabs(z3.getImag() - 5.57725) > 0.0005) {
    std::cout << "NG6" << std::endl;
  } else if (std::fabs(z4.getReal() - 0.723746) > 0.00005) {
    std::cout << "NG7" << std::endl;
  } else if (std::fabs(z4.getImag() - (-0.116565)) > 0.00005) {
    std::cout << "NG8" << std::endl;
  } else {
    std::cout << "OK" << std::endl;
  }

  return 0;
}
