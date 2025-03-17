#include <iostream>
#include <vector>

#ifdef _OPENMP
#include <omp.h>
#else
inline int omp_get_max_threads() { return 1; }
inline int omp_get_thread_num() { return 0; }
#endif

class A {
public:
  A() {
#pragma omp single
    std::cout << "Default Const-A" << std::endl;
  }
  A(int x) {
#pragma omp single
    std::cout << "Dummy Const-A" << std::endl;
  }
  ~A() {}
};

template <class T> class B {
public:
  B() {
#pragma omp single
    std::cout << "Default Const-B" << std::endl;
  }
  B(T a) {
#pragma omp single
    std::cout << "Dummy Const-B" << std::endl;
  }
  ~B() {}
};

int main() {

  const int num_threads = omp_get_max_threads();
  typedef B<A> ab;

  std::vector<A *> obsA(num_threads);
  std::vector<ab *> obsB(num_threads);

#pragma omp parallel
  {
    const int pid = omp_get_thread_num();
    obsA[pid] = (new A(pid));
    obsB[pid] = (new ab(*obsA[pid]));
  }

  return 0;
}
