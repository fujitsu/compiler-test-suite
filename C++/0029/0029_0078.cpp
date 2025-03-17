#include <cmath>
#include <cstdio>
#include <iostream>

static const int LEN = 8;

template <class L, class Op, class R> class Expression {
public:
  explicit Expression(const L &l, const R &r) : l_(l), r_(r) {}

  float operator[](int i) const { return Op::apply(l_[i], r_[i]); }

private:
  const L &l_;
  const R &r_;
};

class Add {
public:
  static float apply(float l, float r) { return l + r; }
};

class Mult {
public:
  static float apply(float l, float r) { return l * r; }
};

class Array {
public:
  Array() { array = new (std::nothrow) float[LEN]; }

  Array(float value, int stride) {
    array = new (std::nothrow) float[LEN];
    set1d(value, stride);
  }

  ~Array() { delete[] array; }

  int set1d(float value, int stride) {
    if (stride == -1) {
      for (int i = 0; i < LEN; i++) {
        array[i] = 1. / static_cast<float>(i + 1);
      }
    } else if (stride == -2) {
      for (int i = 0; i < LEN; i++) {
        array[i] = 1. / static_cast<float>((i + 1) * (i + 1));
      }
    } else {
      for (int i = 0; i < LEN; i += stride) {
        array[i] = value;
      }
    }
    return 0;
  }

  float &operator[](int i) { return array[i]; }

  const float &operator[](int i) const { return array[i]; }

  template <class E> Array &operator=(const E &rhs) {
    for (int i = 0; i < LEN; ++i) {
      array[i] = rhs[i];
    }

    return *this;
  }

private:
  float *array;
};

bool check(Array &arr) {
  if (std::fabs(arr[0] - 180.00000) >= 1.) {
    return false;
  }
  if (std::fabs(arr[1] - 0.307617188) >= 0.0005) {
    return false;
  }
  if (std::fabs(arr[2] - 0.008535287) >= 0.0005) {
    return false;
  }
  if (std::fabs(arr[3] - 0.000708103) >= 0.00005) {
    return false;
  }
  if (std::fabs(arr[4] - 0.000105431) >= 0.00005) {
    return false;
  }
  if (std::fabs(arr[5] - 0.000022575) >= 0.000005) {
    return false;
  }
  if (std::fabs(arr[6] - 0.000006190) >= 0.000005) {
    return false;
  }
  if (std::fabs(arr[7] - 0.000002031) >= 0.000005) {
    return false;
  }

  return true;
}

template <class L, class R>
Expression<L, Add, R> operator+(const L &lhs, const R &rhs) {
  return Expression<L, Add, R>(lhs, rhs);
}

template <class L, class R>
Expression<L, Mult, R> operator*(const L &lhs, const R &rhs) {
  return Expression<L, Mult, R>(lhs, rhs);
}

int main() {
  const float any = 0.;
  const float one = 1.;
  const float two = 2.;
  const float half = .5;
  const int frac = -1;

  Array a(any, frac), b(any, frac), c(one, frac), d(two, frac), e(half, frac);

  Array a1, b1, c1, d1, x;
  a1 = a * (b * c + b * d + b * e + b + c * d + c * e + c + d * e + d + e);
  b1 = b * (c * d + c * e + c + d * e + d + e);
  c1 = c * (d * e + d + e);
  d1 = d * e;
  x = a1 * b1 * c1 * d1;

  if (check(x)) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
