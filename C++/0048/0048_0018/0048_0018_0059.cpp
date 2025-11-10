#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec60_1,vec60_2;

void func60() {
  vec60_1 = vec60_2;
}

struct S60 {
  bool action();
};

bool S60::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  for (size_t i=1; i<N; ++i) {
    vec60_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec60_2.push_back(i);
  }
  
  for (int i=0; i<vec60_1.size(); ++i) {
    if(flag){
      func60();
      flag = false;
    }
    m += vec60_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub60()
{
  S60 obj;

  if (obj.action() == true) {
    std::puts("NG 60");
  } else {
    std::puts("OK 60");
  }
}
