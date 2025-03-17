#include <cmath>
#include <cstdio>
#include <iostream>

static const int LEN = 8;

class Array {
public:
  Array() { array = new (std::nothrow) float[LEN]; }

  Array(const Array &rhs) {
    array = new (std::nothrow) float[LEN];
    for (int i = 0; i < LEN; ++i) {
      array[i] = rhs[i];
    }
  }

  ~Array() { delete[] array; }

  float &operator[](int i) { return array[i]; }

  const float &operator[](int i) const { return array[i]; }

  Array &operator=(const Array &rhs) {
    for (int i = 0; i < LEN; ++i) {
      array[i] = rhs[i];
    }

    return *this;
  }

  Array operator+(const Array &rhs) {
    Array tmp;

    for (int i = 0; i < LEN; ++i) {
      tmp[i] = array[i] + rhs[i];
    }

    return tmp;
  }

  Array operator*(const Array &rhs) {
    Array tmp;

    for (int i = 0; i < LEN; ++i) {
      tmp[i] = array[i] * rhs[i];
    }

    return tmp;
  }

private:
  float *array;
};

int set1d(Array &arr, float value, int stride) {
  if (stride == -1) {
    for (int i = 0; i < LEN; i++) {
      arr[i] = 1. / static_cast<float>(i + 1);
    }
  } else if (stride == -2) {
    for (int i = 0; i < LEN; i++) {
      arr[i] = 1. / static_cast<float>((i + 1) * (i + 1));
    }
  } else {
    for (int i = 0; i < LEN; i += stride) {
      arr[i] = value;
    }
  }
  return 0;
}

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

int main() {
  Array a, b, c, d, e;

  const float any = 0.;
  const float one = 1.;
  const float two = 2.;
  const float half = .5;
  const int frac = -1;

  set1d(a, any, frac);
  set1d(b, any, frac);
  set1d(c, one, frac);
  set1d(d, two, frac);
  set1d(e, half, frac);

  Array a1 = a * b * c + a * b * d + a * b * e + a * b + a * c * d + a * c * e +
             a * c + a * d * e + a * d + a * e;
  Array b1 = b * c * d + b * c * e + b * c + b * d * e + b * d + b * e;
  Array c1 = c * d * e + c * d + c * e;
  Array d1 = d * e;
  Array x = a1 * b1 * c1 * d1;

  if (check(x)) {
    std::cout << "OK" << std::endl;
  } else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
