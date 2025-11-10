#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1225
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec62_1;

void func62() {
  std::puts("func62");
}

struct S62 {
  bool action();
};

bool S62::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  for (size_t i=1; i<N; ++i) {
    vec62_1.push_back(i);
  }
  
  for (int i=0; i<vec62_1.size(); ++i) {
    if(flag){
      func62();
      flag = false;
    }
    m += vec62_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub62()
{
  S62 obj;

  if (obj.action() == true) {
    std::puts("NG 62");
  } else {
    std::puts("OK 62");
  }
}
