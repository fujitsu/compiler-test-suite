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
  if (arr[0] != 1.) { return false; }
  if (arr[1] != 1.) { return false; }
  if (std::fabs(arr[2] - 0.666) > 0.1)  { return false; }
  if (std::fabs(arr[3] - 0.5)   > 0.1)  { return false; }
  if (std::fabs(arr[4] - 0.4)   > 0.1)  { return false; }
  if (std::fabs(arr[5] - 0.333) > 0.1)  { return false; }
  if (std::fabs(arr[6] - 0.285) > 0.1)  { return false; }
  if (std::fabs(arr[7] - 0.25)  > 0.1)  { return false; }
  if (std::fabs(arr[8] - 0.222) > 0.1)  { return false; }
  if (std::fabs(arr[9] - 0.2)   > 0.1)  { return false; }
  if (std::fabs(arr[10] - 0.181) > 0.1) { return false; }
  if (std::fabs(arr[11] - 0.166) > 0.1) { return false; }
  if (std::fabs(arr[12] - 0.153) > 0.1) { return false; }
  if (std::fabs(arr[13] - 0.142) > 0.1) { return false; }
  if (std::fabs(arr[14] - 0.133) > 0.1) { return false; }
  if (std::fabs(arr[15] - 0.125) > 0.1) { return false; }

  return true;
}

bool checkB(float arr[LEN])
{
  if (arr[0] != 1.) { return false; }
  if (std::fabs(arr[1] - 2.5)  > 0.1)   { return false; }
  if (std::fabs(arr[2] - 3.5)  > 0.1)   { return false; }
  if (std::fabs(arr[3] - 4.25) > 0.1)   { return false; }
  if (std::fabs(arr[4] - 4.85) > 0.1)   { return false; }
  if (std::fabs(arr[5] - 5.35) > 0.1)   { return false; }
  if (std::fabs(arr[6] - 5.778) > 0.1)  { return false; }
  if (std::fabs(arr[7] - 6.153) > 0.1)  { return false; }
  if (std::fabs(arr[8] - 6.486) > 0.1)  { return false; }
  if (std::fabs(arr[9] - 6.786) > 0.1)  { return false; }
  if (std::fabs(arr[10] - 7.059) > 0.1) { return false; }
  if (std::fabs(arr[11] - 7.309) > 0.1) { return false; }
  if (std::fabs(arr[12] - 7.540) > 0.1) { return false; }
  if (std::fabs(arr[13] - 7.754) > 0.1) { return false; }
  if (std::fabs(arr[14] - 7.954) > 0.1) { return false; }
  if (std::fabs(arr[15] - 8.142) > 0.1) { return false; }

  return true;
}

int main()
{
  float any = 0.;
  float one = 1.;
  int frac  = -1;
  int unit  = 1;

  float *a = new(std::nothrow) float[LEN];
  float *b = new(std::nothrow) float[LEN];
  float *c = new(std::nothrow) float[LEN];
  float *d = new(std::nothrow) float[LEN];

  set1d(a, any, frac);
  set1d(b, one, unit);
  set1d(c, one, unit);
  set1d(d, any, frac);

  for (int i = 1; i < LEN; ++i) {
    a[i] += c[i] * d[i];
    b[i] = b[i - 1] + a[i] + d[i];
  }

  if (!checkA(a)) {
    std::cout << "NG" << std::endl;
    delete [] a, b, c, d;
    return EXIT_SUCCESS;
  }

  if (checkB(b)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  delete [] a, b, c, d;

  return EXIT_SUCCESS;
}
