#include <iostream>
#include <cmath>

#define LEN 8

class Array
{
public:
  Array(int size, float value, int stride)
    : size_(size)
  {
    array = new(std::nothrow) float[size_];
    set1d(value, stride);
  }

  ~Array()
  {
    delete [] array;
  }

  int set1d(float value, int stride)
  {
    if (stride == -1) {
      for (int i = 0; i < LEN; i++) {
	array[i] = 1. / static_cast<float>(i + 1);
      }
    }
    else if (stride == -2) {
      for (int i = 0; i < LEN; i++) {
	array[i] = 1. / static_cast<float>((i + 1) * (i + 1));
      }
    }
    else {
      for (int i = 0; i < LEN; i += stride) {
	array[i] = value;
      }
    }
    return 0;
  }

  const float& operator [] (int i) const
  {
    return array[i];
  }

  float& operator [] (int i)
  {
    return array[i];
  }

private:
  float *array;
  const int size_;
};

bool check(Array& arr)
{
  if (arr[0] != 0.) { return false; }
  if (arr[1] != 2.) { return false; }
  if (std::fabs(arr[2] - 1.25)  > 0.1) { return false; }
  if (std::fabs(arr[3] - 1.111) > 0.1) { return false; }
  if (std::fabs(arr[4] - 1.062) > 0.1) { return false; }
  if (std::fabs(arr[5] - 1.04)  > 0.1) { return false; }
  if (std::fabs(arr[6] - 1.027) > 0.1) { return false; }
  if (std::fabs(arr[7] - 1.020) > 0.1) { return false; }
  return true;
}

int main()
{
  const float zero = 0.;
  const float one = 1.;
  const float any = 0.;
  const int unit = 1;
  const int frac = -1;
  
  Array a(LEN, zero, unit),
    b(LEN, one, unit),
    c(LEN, one, unit),
    d(LEN, any, frac),
    e(LEN, any, frac);

  int j = 0;
  for (int i = 0; i < LEN; i++) {
    if (b[i] > static_cast<float>(0.)) {
      j++;
      a[j] = b[i] + d[i] * e[i];
    }
    else {
      j++;
      a[j] = c[i] + d[i] * e[i];
    }
  }

  if (check(a)) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return EXIT_SUCCESS;
}
