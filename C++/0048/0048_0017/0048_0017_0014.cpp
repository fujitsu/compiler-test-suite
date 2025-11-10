#include <cstdio>
#include <vector>

using namespace std;

void sub18()
{
  vector<double> vec;
  int cnt = 0;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    cnt++; 
    vec.reserve(50);
  }
  if (cnt == 29) {
    std::puts("OK 18");
  } else {
    std::puts("NG 18");
  }
}
