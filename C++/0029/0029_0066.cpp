#include <iostream>
#include <cmath>

#define LEN 16

int set1d(float arr[LEN], float value, int stride)
{
  if (stride == -1) {
    for (int i = 0; i < LEN; ++i) {
      arr[i] = 1. / static_cast<float>(i + 1);
    }
  }
  else if (stride == -2) {
    for (int i = 0; i < LEN; ++i) {
      arr[i] = 1. / static_cast<float>((i + 1) * (i + 1));
    }
  }
  else {
    for (int i = 0; i < LEN; i += stride) {
      arr[i] = value;
    }
  }

  return 0;
}

bool checkA(float arr[LEN])
{
  for (int i = 0; i < LEN; ++i) {
    if (arr[i] != 0.) {
      return false;
    }
  }

  return true;
}

bool checkE(float arr[LEN])
{
  for (int i = 1; i < LEN; ++i) {
    if (arr[i] != 1.) {
      return false;
    }
  }

  return true;
}

int main()
{
  float zero = 0.;
  float one = 1.;
  int unit = 1;

  float *a = new(std::nothrow) float[LEN];
  float *b = new(std::nothrow) float[LEN];
  float *c = new(std::nothrow) float[LEN];
  float *e = new(std::nothrow) float[LEN];

  set1d(a, zero, unit);
  set1d(b, one, unit);
  set1d(c, one, unit);

  e[0] = 1.;

  for (int i = 1; i < LEN; ++i) {
    a[i] += b[i] * c[i];
    e[i] = e[i - 1] * e[i - 1];
    a[i] -= b[i] * c[i];
  }

  if (!checkA(a)) {
    std::cout << "NG" << std::endl;
    delete [] a, b, c, e;
    return EXIT_SUCCESS;
  }

  if (checkE(e)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  delete [] a, b, c, e;

  return EXIT_SUCCESS;
}
