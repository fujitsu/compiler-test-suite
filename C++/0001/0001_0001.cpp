#include <iostream>
#include <vector>

#define N 100
#define Master 45
#define ELEMENT_TYPE int
using namespace std;

vector<int>& move(vector<int>& src){
  return static_cast<vector<int>&>( src );
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  vector<ELEMENT_TYPE> vec1,vec2;
  vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i< N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i< 10; ++i) {
    vec2.push_back(i);
  }
  for (it = vec1.begin(); it != vec1.end(); ++it) {
    m = m + *it;
    if(flag){
      vec1 = move(vec2);
      flag = false;
    }
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;

  if (obj.action() == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
