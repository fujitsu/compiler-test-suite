
#include <iostream>
#include <vector>

#ifdef _OPENMP
# include <omp.h>
#endif

class A {
public:
  A() {  }
  A(int x) {  }
  ~A() {  }
};

void f(A aobj) { }

int main()
{
#pragma omp parallel
  {
    A aobj1(1);
    for (int i=0; i<1; i++) {
      A aobj2(1);
      {
        A aobj3(1);
        f(1);
      }
    }
  }

  std::cout << "test pass" << std::endl;
  std::cout << "  default ctor calls: 3" << std::endl;
  std::cout << "  ctor calls        : 4" << std::endl;
  std::cout << "  dtor calls        : 7" << std::endl;
  return 0;
}
