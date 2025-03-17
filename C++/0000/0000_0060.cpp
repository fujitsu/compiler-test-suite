#include <iostream>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Answer 435
#define ELEMENT_TYPE int
std::vector<ELEMENT_TYPE> vec1,vec2;

vector<int>& move(vector<int>& src){
  return static_cast<vector<int>&>( src );
}

void func1() {
  vec1 = move(vec2);
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  for (size_t i=1; i<N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec2.push_back(i);
  }
  
  for (int i=0; i<vec1.size(); ++i) {
    if(flag){
      func1();
      flag = false;
    }
    m += vec1[i];
  }
  if (m != Answer) {
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
