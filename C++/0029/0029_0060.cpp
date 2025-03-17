#include <iostream>
#include <cmath>

static const int LEN = 32;
static const int LEN2 = 16;

int set1d(float *arr, const float value, const int stride)
{
  if (stride == -1) {
    for (int i = 0; i < LEN; i++) {
      arr[i] = 1. / static_cast<float>(i + 1);
    }
  }
  else if(stride == -2) {
    for (int i = 0; i < LEN; i++) {
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

int set2d(float **arr, const float value, const int stride)
{
  if (stride == -1) {
    for (int i = 0; i < LEN2; i++) {
      for (int j = 0; j < LEN2; j++) {
	arr[i][j] = 1. / static_cast<float>(i + 1);
      }
    }
  }
  else if (stride == -2) {
    for (int i = 0; i < LEN2; i++) {
      for (int j = 0; j < LEN2; j++) {
	arr[i][j] = 1. / static_cast<float>((i + 1) * (i + 1));
      }
    }
  }
  else {
    for (int i = 0; i < LEN2; i++) {
      for (int j = 0; j < LEN2; j += stride) {
	arr[i][j] = value;
      }
    }
  }
  return 0;
}

void s118(float *a, float **bb)
{
  for (int i = 1; i < LEN2; i++) {
    for (int j = 0; j <= i -1; j++) {
      a[i] += bb[j][i] * a[i - j - 1];
    }
  }
}

bool check(float *arr)
{
  for (int i = 1; i < LEN2; ++i) {
    if (fabs(arr[i] - 1.) > 0.001) {
      return false;
    }
  }

  return true;
}

int main()
{
  float *a = new(std::nothrow) float[LEN];
  float **bb = new(std::nothrow) float*[LEN2];
  for (int i = 0; i < LEN2; ++i) {
    bb[i] = new(std::nothrow) float[LEN2];
  }

  const float one = 1.;
  const float small = .000001;
  const int unit = 1;

  set1d(a, one, unit);
  set2d(bb, small, unit);

  s118(a, bb);

  if (check(a)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  for (int i = 0; i < LEN2; ++i) {
    delete [] bb[i];
  }
  delete [] a, bb;

  return EXIT_SUCCESS;
}
