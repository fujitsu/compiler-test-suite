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
    vec.clear();
  }
  cout << m << endl; 
  return 0;
}
