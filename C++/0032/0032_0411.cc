#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class A {
public:
  A() { }
  A(int x) { }
  ~A() {}
  A& operator=(A& x) { return x; }
};

int main()
{

   A aobj(1);
#pragma omp parallel private(aobj)
  {
  }

#pragma omp parallel firstprivate(aobj)
  {
  }

#pragma omp for lastprivate(aobj)
  for (int i=0; i<1; i++) {
  }

  printf("test ok\n");
  return 0;
}
