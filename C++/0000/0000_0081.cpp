#include <iostream>
#include <vector>
using namespace std;
int main() {
  vector<double> vec;
  double m = 1 ;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    vec.assign(10,100);
  }
  if (m == 902) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
