#include <iostream>
#include <set>
#include <limits.h>
using namespace std;
void func();
int main() {
  set<int> st;
  int m = 1;

  for (size_t i=1; i<30; ++i) {
    st.insert(i);
  }
  for (size_t it = 0; it != st.size(); ++it) {
    m = m + it;
  }

  if (m == 407) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  return 0;
}
