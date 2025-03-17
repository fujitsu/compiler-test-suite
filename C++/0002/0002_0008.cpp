#include <stdio.h>
#include <vector>
using namespace std;
int main() {
  vector<double> vec;
  double m = 1 ;
  bool flag = true;
  for (size_t i=1; i< 30; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i < vec.size(); i++) {
    m = m + vec[i];
    if(flag){
      vec = {100, 200, 300, 400, 500};
      flag = false;
    }
  }
  if (m == 1402) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
