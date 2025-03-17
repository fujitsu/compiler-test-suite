#include <iostream>
#include <cmath>

static const int LEN = 8;

class Matrix
{
public:
  Matrix()
  {
    matrix = new(std::nothrow) float*[LEN];

    for (int i = 0; i < LEN; ++i) {
      matrix[i] = new(std::nothrow) float[LEN];
    }

    for (int i = 0; i < LEN; ++i) {
      for (int j = 0; j < LEN; ++j) {
	matrix[i][j] = 0.;
      }
    }
  }
  
  Matrix(float value, int stride)
  {
    matrix = new(std::nothrow) float*[LEN];

    for (int i = 0; i < LEN; ++i) {
      matrix[i] = new(std::nothrow) float[LEN];
    }

    set2d(value, stride);
  }

  ~Matrix()
  {
    for (int i = 0; i < LEN; ++i) {
      delete [] matrix[i];
    }
    delete [] matrix;
  }

  int set2d(float value, int stride)
  {
    if (stride == -1) {
      for (int i = 0; i < LEN; i++) {
	for (int j = 0; j < LEN; j++) {
	  matrix[i][j] = 1. / static_cast<float>(i + 1);
	}
      }
    }
    else if (stride == -2) {
      for (int i = 0; i < LEN; i++) {
	for (int j = 0; j < LEN; j++) {
	  matrix[i][j] = 1. / static_cast<float>((i + 1) * (i + 1));
	}
      }
    }
    else {
      for (int i = 0; i < LEN; i++) {
	for (int j = 0; j < LEN; j += stride) {
	  matrix[i][j] = value;
	}
      }
    }
    return 0;
  }

  Matrix operator + (const Matrix& rhs)
  {
    Matrix tmp;

    for (int i = 0; i < LEN; ++i) {
      for (int j = 0; j < i; ++j) {
	tmp[i][j] = matrix[j][i] + rhs[i][j];
      }
    }

    return tmp;
  }

  Matrix& operator = (const Matrix& rhs)
  {
    for (int i = 0; i < LEN; ++i) {
      for (int j = 0; j < LEN; ++j) {
	matrix[i][j] = rhs[i][j];
      }
    }

    return *this;
  }

  float *operator [] (int i)
  {
    return matrix[i];
  }

  const float *operator [] (int i) const
  {
    return matrix[i];
  }

private:
  float **matrix;
};

bool check(Matrix& arr)
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
  float any = 0.;
  int frac = -1, frac2 = -2;

  Matrix aa(any, frac), bb(any, frac2);

  aa = aa + bb;

  if (check(aa)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }
  
  return EXIT_SUCCESS;
}
