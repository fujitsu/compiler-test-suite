#include <iostream>
#include <cmath>

#define LEN 	32
#define LEN2 	16

float a[LEN], bb[LEN2][LEN2];

int set1d(float arr[LEN], float value, int stride)
{
  for (int i = 0; i < LEN; ) {
    if (stride == -1) {
      arr[i] = 1. / static_cast<float>(i + 1);
      ++i;
    }
    else if(stride == -2) {
      arr[i] = 1. / static_cast<float>((i + 1) * (i + 1));
      ++i;
    }
    else {
      arr[i] = value;
      i += stride;
    }
  }
  return 0;
}

int set2d(float arr[LEN2][LEN2], float value, int stride)
{
  for (int i = 0; i < LEN2; i++) {
    for (int j = 0; j < LEN2; ) {
      if (stride == -1) {
	arr[i][j] = 1. / static_cast<float>(i + 1);
	++j;
      }
      else if (stride == -2) {
	arr[i][j] = 1. / static_cast<float>((i + 1) * (i + 1));
	++j;
      }
      else {
	arr[i][j] = value;
	j += stride;
      }
    }
  }
  return 0;
}

void s118()
{
  for (int i = 1; i < LEN2; i++) {
    for (int j = 0; j <= i -1; j++) {
      a[i] += bb[j][i] * a[i - j - 1];
    }
  }
}

bool check(float arr[LEN])
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
  float one = 1.;
  float small = .000001;
  int unit = 1;

  set1d(a, one, unit);
  set2d(bb, small, unit);

  s118();

  if (check(a)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
