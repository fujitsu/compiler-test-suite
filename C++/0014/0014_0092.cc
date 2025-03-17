#include <iostream>
#include <algorithm>

int main(void)
{
  int i;
  int x = 5, y = 5;
  for (i=1; i<=100; i++) {
    x = std::min(x, i);
  }
#pragma omp parallel for simd reduction(min:y)
  for (i=1; i<=100; i++) {
    y = std::min(y, i);
  }
  if (x != y) {
    std::cout << "NG " <<  x << " " << y << std::endl;
    return 1;
  }
  std::cout << "OK" << std::endl;
  return 0;
}
