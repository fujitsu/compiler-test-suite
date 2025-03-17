#include <iostream>
using namespace std;

short func() { return 1; }

char c;
char &func2() { return c; }
int main() {
  short (&fr)() = func;
  char &(&fr2)() = func2;
  int work = 0;

#pragma omp parallel
  if (sizeof(fr()) == sizeof(short) && sizeof(fr2()) == sizeof(char &)) {
#pragma omp parallel
    ;
  } else {
#pragma omp parallel
    cout << "ng\n";
#pragma omp parallel
    cout << sizeof(fr2()) << "\n";
#pragma omp parallel
    cout << sizeof(char &) << "\n";
    work++;
  }

  if (!work)
    cout << "ok\n";
}
