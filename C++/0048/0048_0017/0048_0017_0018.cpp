#include <cstdio>
#include <vector>

using namespace std;

void sub22()
{
  vector<int> vec;
  int m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    if (i == 3) {
      vec.insert(vec.end()-1,10);
    }
  }
  if (m == 446) {
    std::puts("OK 22");
  } else {
    std::puts("NG 22");
  }
}
