#include <iostream>
#include <cmath>

static const int LEN = 32;
static const int LEN2 = 16;

int set1d(float *arr, const float value, const int stride)
{
  int i = 0;
  if (stride == -1) {
    while (i < LEN) {
      arr[i] = 1. / static_cast<float>(i + 1);
      ++i;
    }
  }
  else if(stride == -2) {
    while (i < LEN) {
      arr[i] = 1. / static_cast<float>((i + 1) * (i + 1));
      ++i;
    }
  }
  else {
    while (i < LEN) {
      arr[i] = value;
      i++;
    }
  }
  return 0;
}

int set2d(float **arr, const float value, const int stride)
{
  int i = 0, j = 0;
  if (stride == -1) {
    while (i < LEN2) {
      while (j < LEN2) {
	arr[i][j] = 1. / static_cast<float>(i + 1);
	++j;
      }
      ++i;
      j = 0;
    }
  }
  else if (stride == -2) {
    while (i < LEN2) {
      while (j < LEN2) {
	arr[i][j] = 1. / static_cast<float>((i + 1) * (i + 1));
	++j;
      }
      ++i;
      j = 0;
    }
  }
  else {
    while (i < LEN2) {
      while (j < LEN2) {
	arr[i][j] = value;
	++j;
      }
      ++i;
      j = 0;
    }
  }
  return 0;
}

void s118(float *a, float **bb)
{
  int i = 1, j = 0;
  while (i < LEN2) {
    while (j <= i -1) {
      a[i] += bb[j][i] * a[i - j - 1];
      ++j;
    }
    ++i;
    j = 0;
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
