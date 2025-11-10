#include <cstdio>
#include <vector>

using namespace std;

void sub24()
{
  vector<int> vec1,vec2;
  int m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i< 50; ++i) {
    vec2.push_back(i);
  }
  for (int i = 0; i < vec1.size(); i++) {
    m = m + vec1[i];
    if (i == 3) {
      vec1.swap(vec2);
    }
  }
  if (m == 1226) {
    std::puts("OK 24");
  } else {
    std::puts("NG 24");
  }
}
