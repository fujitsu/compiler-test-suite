#include <cstdio>
#include <set>
#include <limits.h>

using namespace std;

void sub43()
{
  set<int> st;
  int m = 1;

  for (size_t i=1; i<30; ++i) {
    st.insert(i);
  }
  set<int>::iterator it;
  for (it = st.begin(); it != st.end(); ++it) {
    m = m + *it;
  }

  if (m == 436) {
    std::puts("OK 43");
  } else {
    std::puts("NG 43");
  }
}
