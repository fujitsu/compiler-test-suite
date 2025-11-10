#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1235
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec55_1;

void func55() {
  vec55_1.insert(vec55_1.end()-1,10);
}

struct S55 {
  bool action();
};

bool S55::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec55_1.push_back(i);
  }
  
  for (int i=0; i<vec55_1.size(); ++i) {
    if (i == 3) {
      func55();
    }
    m += vec55_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub55()
{
  S55 obj;

  if (obj.action() == true) {
    std::puts("NG 55");
  } else {
    std::puts("OK 55");
  }
}
