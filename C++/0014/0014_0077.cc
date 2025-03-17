#include <iostream>

int main(void)
{
  int x[10];
  const int ans = 1;
  int tmp = ans;
  int i;
#pragma omp simd private(tmp)
  for (i=0; i<10; i++) {
    tmp = i;
    x[i] = tmp;
  }
  if (tmp != ans) {
    std::cout << "NG " << tmp << x[9] << std::endl; 
    return 1;
  }
  std::cout << "OK" << std::endl;
  return 0;
}
