#include <cstdio>
#include <vector>

using namespace std;

void sub17()
{
  vector<double> vec;
  double m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    vec.resize(10);
  }
  if (m == 56) {
    std::puts("OK 17");
  } else {
    std::puts("NG 17");
  }
}
