#include <iostream>
#include <algorithm>

int main(void)
{
  int i;
  int x = 10, y = 10;
  for (i=1; i<=100; i++) {
    x = std::max(x, i);
  }
#pragma omp parallel
  {
#pragma omp for simd reduction(max:y)
    for (i=1; i<=100; i++) {
      y = std::max(y, i);
    }
  }
  if (x != y) {
    std::cout << "NG " <<  x << " " << y << std::endl;
    return 1;
  }
  std::cout << "OK" << std::endl;
  return 0;
}
