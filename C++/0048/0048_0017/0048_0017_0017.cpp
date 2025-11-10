#include <cstdio>
#include <vector>

using namespace std;

void sub21()
{
  vector<int> vec;
  int m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    if (i == 3) {
      vec.pop_back();
    }
  }
  if (m == 407) {
    std::puts("OK 21");
  } else {
    std::puts("NG 21");
  }
}
