#include <iostream>
using namespace std;

struct Empty1 {};
struct Class : Empty1 {
  int i;
};

struct Empty {};
struct Nonempty1 {
  char c;
};
struct Nonempty2 {
  char c;
};
struct Optimized : Nonempty1, Nonempty2, Empty {};
int main() {
  int work = 0;
#pragma omp parallel
#if defined(__linux__)
  if (4 == sizeof(Class) &&
#else
  if (8 == sizeof(Class) &&
#endif
#if defined(__linux__)
      2 == sizeof(Optimized))
#else
      3 == sizeof(Optimized))
#endif
#pragma omp parallel
    ;
  else {
#pragma omp parallel
#pragma omp atomic
    work++;
#pragma omp parallel
    cout << sizeof(Class) << endl;
#pragma omp parallel
    cout << sizeof(Optimized) << endl;
  }

  if (!work)
    cout << "ok" << endl;
  else
    cout << "ng" << endl;
}
