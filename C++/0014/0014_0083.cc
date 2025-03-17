#include <iostream>

int main(void)
{
  int i;
  const int init = 10;
  int sum1 = init, sum2 = init;
  for (i=1; i<=100; i++) {
    sum1 = sum1 + i;
  }
#pragma omp parallel for simd reduction(+:sum2)
  for (i=1; i<=100; i++) {
    sum2 = sum2+ i;
  }
  if (sum1 != sum2) {
    std::cout << "NG " <<  sum1 << " " << sum2 << std::endl;
    return 1;
  }
  std::cout << "OK" << std::endl;
  return 0;
}
