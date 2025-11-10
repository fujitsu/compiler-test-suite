#include <cstdio>
#include <vector>

using namespace std;

void sub23()
{
  vector<int> vec;
  int m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    if (i == 3) {
      vec.erase(vec.end()-1);
    }
  }
  if (m == 407) {
    std::puts("OK 23");
  } else {
    std::puts("NG 23");
  }
}
