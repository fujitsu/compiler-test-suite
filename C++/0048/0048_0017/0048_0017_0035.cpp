#include <cstdio>
#include <list>
#include <limits.h>

using namespace std;

void sub40()
{
  list<long> lis;
  long m = 1;

  for (size_t i=1; i<30; ++i) {
    lis.push_back(i);
  }
  for (size_t it = 0; it != lis.size(); ++it) {
    m = m + it;
  }

  if (m == 407) {
    std::puts("OK 40");
  } else {
    std::puts("NG 40");
  }
}
