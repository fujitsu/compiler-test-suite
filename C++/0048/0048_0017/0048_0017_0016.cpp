#include <cstdio>
#include <vector>

using namespace std;

void sub20()
{
  vector<int> vec;
  int m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    if (i == 3) {
      vec.push_back(m);
    }
  }
  if (m == 447) {
    std::puts("OK 20");
  } else {
    std::puts("NG 20");
  }
}
