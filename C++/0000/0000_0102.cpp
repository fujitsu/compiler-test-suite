#include <iostream>
#include <list>
#include <limits.h>
using namespace std;
int main() {
  list<long> lis;
  long m = 1;

  for (size_t i=1; i<30; ++i) {
    lis.push_back(i);
  }
  for (size_t it = 0; it != lis.size(); ++it) {
    m = m + it;
  }

  if (m == 407) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  return 0;
}
