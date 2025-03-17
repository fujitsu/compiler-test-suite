#include <iostream>
#include <vector>
using namespace std;
int main() {
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
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
