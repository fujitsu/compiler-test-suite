#include <cstdio>
#include <vector>

using namespace std;

void sub27()
{
  vector<int> vec1,vec2;
  int m = 1 ;
  bool flag = true;
  for (size_t i=1; i< 30; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i< 10; ++i) {
    vec2.push_back(i);
  }
  for (int i = 0; i < vec1.size(); i++) {
    m = m + vec1[i];
    if(flag){
      vec1 = vec2;
      flag = false;
    }
  }
  if (m == 46) {
    std::puts("OK 27");
  } else {
    std::puts("NG 27");
  }
}
