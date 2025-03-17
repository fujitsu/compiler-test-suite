#include <iostream>
#include <vector>

#define IMAX 10
#define JMAX 5

int main(void)
{
  std::vector< std::vector<int> > a(IMAX,std::vector<int>(JMAX)), b(IMAX,std::vector<int>(JMAX));

#pragma omp parallel for collapse(2)
  for (size_t i=0; i<IMAX; i++) {
    for (size_t j=0; j<JMAX; j++) {
      a[i][j] = 1;
    }
  }

  for (size_t i=0; i<IMAX; i++) {
    for (size_t j=0; j<JMAX; j++) {
      b[i][j] = 1;
    }
  }

  for (size_t i=0; i<IMAX; i++) {
    for (size_t j=0; j<JMAX; j++) {
      if (a[i][j] != b[i][j]) {
        std::cout << "NG" << std::endl;
        return 1;
      }
    }
  }
  std::cout << "OK" << std::endl;
  return 0;
}
