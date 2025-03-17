#include <iostream>
const int ANS = 2;

void init(int& x) {
  x = 1;
}

void test(int& x) {
  if (x != ANS) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;
}

int main()
{
  int a;
  int& x = a;

  init(x);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(a, x) depend(inout: a)
    x += 1;
#pragma omp task shared(a, x) depend(out: a)
    test(x);
  }
  return 0;
}
