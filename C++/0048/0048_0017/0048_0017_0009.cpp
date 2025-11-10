#include <cstdio>
#include <vector>

#define N 100
#define Master 45
#define ELEMENT_TYPE long long int

struct S13 {
  bool action();
};

bool S13::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  std::vector<ELEMENT_TYPE> vec1,vec2;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i< N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i< 10; ++i) {
    vec2.push_back(i);
  }
  for (it = vec1.begin(); it != vec1.end(); ++it) {
    m = m + *it;
    if(flag){
      vec1 = vec2;
      flag = false;
    }
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub13()
{
  S13 obj;

  if (obj.action() == true) {
    std::puts("NG 13");
  } else {
    std::puts("OK 13");
  }
}
