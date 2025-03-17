#include <iostream>
#include <vector>
using namespace std;
vector<int>& move(vector<int>& src){
  return static_cast<vector<int>&>( src );
}

int main() {
  vector<double> vec1,vec2;
  double m = 1 ;
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
      vec1 = move(vec2);
      flag = false;
    }
  }
  if (m == 46) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
