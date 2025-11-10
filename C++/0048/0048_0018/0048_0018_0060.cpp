#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE int
std::vector<ELEMENT_TYPE> vec61_1,vec61_2;

vector<int>& move(vector<int>& src){
  return static_cast<vector<int>&>( src );
}

void func61() {
  vec61_1 = move(vec61_2);
}

struct S61 {
  bool action();
};

bool S61::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  for (size_t i=1; i<N; ++i) {
    vec61_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec61_2.push_back(i);
  }
  
  for (int i=0; i<vec61_1.size(); ++i) {
    if(flag){
      func61();
      flag = false;
    }
    m += vec61_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub61()
{
  S61 obj;

  if (obj.action() == true) {
    std::puts("NG 61");
  } else {
    std::puts("OK 61");
  }
}
