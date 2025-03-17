#include <iostream>
#include <vector>
using namespace std;
static void foo(vector<int> vec) {
  vec.resize(10);
}

int main() {
  vector<int> vec;
  int m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    foo(vec);
  }
  if (m == 436) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
