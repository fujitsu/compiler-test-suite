#include <cstdio>
#include <list>
#include <limits.h>

using namespace std;

void sub39()
{
  list<long>::iterator it;  
  list<long> lis;
  long m = 1;

  for (size_t i=1; i<30; ++i) {
    lis.push_back(i);
  }
  for (it = lis.begin(); it != lis.end(); ++it) {
    m = m + *it;
  }

  if (m == 436) {
    std::puts("OK 39");
  } else {
    std::puts("NG 39");
  }
}
