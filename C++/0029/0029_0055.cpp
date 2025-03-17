#include <iostream>
#include <cmath>

static const int LEN2 = 8;

int set2d(float **arr, const float value, const int stride)
{
  int i = 0, j = 0;
  switch (stride) {
  case -1: {
    while (i < LEN2) {
      while (j < LEN2) {
	arr[i][j] = 1. / static_cast<float>(i + 1);
	++j;
      }
      ++i;
      j = 0;
    }
    break;
  }

  case -2: {
    while (i < LEN2) {
      while (j < LEN2) {
	arr[i][j] = 1. / static_cast<float>((i + 1) * (i + 1));
	++j;
      }
      ++i;
      j = 0;
    }
    break;
  }
    
  default: {
    while (i < LEN2) {
      while (j < LEN2) {
	arr[i][j] = value;
	j += stride;
      }
      ++i;
      j = 0;
    }
    break;
  }
  }
  return 0;
}

bool check(float **arr)
{
  if (std::fabs(arr[1][0] - 1.25)  > 0.1) { return false; }
  if (std::fabs(arr[2][0] - 1.111) > 0.1) { return false; }
  if (std::fabs(arr[2][1] - 0.611) > 0.1) { return false; }
  if (std::fabs(arr[3][0] - 1.062) > 0.1) { return false; }
  if (std::fabs(arr[3][1] - 0.562) > 0.1) { return false; }
  if (std::fabs(arr[3][2] - 0.395) > 0.1) { return false; }
  if (std::fabs(arr[4][0] - 1.04)  > 0.1) { return false; }
  if (std::fabs(arr[4][1] - 0.54)  > 0.1) { return false; }
  if (std::fabs(arr[4][2] - 0.373) > 0.1) { return false; }
  if (std::fabs(arr[4][3] - 0.29)  > 0.1) { return false; }
  if (std::fabs(arr[5][0] - 1.027) > 0.1) { return false; }
  if (std::fabs(arr[5][1] - 0.527) > 0.1) { return false; }
  if (std::fabs(arr[5][2] - 0.361) > 0.1) { return false; }
  if (std::fabs(arr[5][3] - 0.277) > 0.1) { return false; }
  if (std::fabs(arr[5][4] - 0.227) > 0.1) { return false; }
  if (std::fabs(arr[6][0] - 1.020) > 0.1) { return false; }
  if (std::fabs(arr[6][1] - 0.520) > 0.1) { return false; }
  if (std::fabs(arr[6][2] - 0.353) > 0.1) { return false; }
  if (std::fabs(arr[6][3] - 0.270) > 0.1) { return false; }
  if (std::fabs(arr[6][4] - 0.220) > 0.1) { return false; }
  if (std::fabs(arr[6][5] - 0.187) > 0.1) { return false; }
  if (std::fabs(arr[7][0] - 1.015) > 0.1) { return false; }
  if (std::fabs(arr[7][1] - 0.515) > 0.1) { return false; }
  if (std::fabs(arr[7][2] - 0.348) > 0.1) { return false; }
  if (std::fabs(arr[7][3] - 0.265) > 0.1) { return false; }
  if (std::fabs(arr[7][4] - 0.215) > 0.1) { return false; }
  if (std::fabs(arr[7][5] - 0.182) > 0.1) { return false; }
  if (std::fabs(arr[7][6] - 0.158) > 0.1) { return false; }

  return true;
}

int main()
{
  const float any = 0.;
  const int frac = -1, frac2 = -2;

  float **aa = new(std::nothrow) float*[LEN2];
  float **bb = new(std::nothrow) float*[LEN2];
  for (int i = 0; i < LEN2; ++i) {
    aa[i] = new(std::nothrow) float[LEN2];
    bb[i] = new(std::nothrow) float[LEN2];
  }

  set2d(aa, any, frac);
  set2d(bb, any, frac2);

  int i = 0, j = 0;
  while (i < LEN2) {
    while (j < i) {
      aa[i][j] = aa[j][i] + bb[i][j];
      ++j;
    }
    ++i;
    j = 0;
  }

  if (check(aa)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  for (int i = 0; i < LEN2; ++i) {
    delete[] aa[i], bb[i];
  }
  delete [] aa, bb;

  return EXIT_SUCCESS;
}
