#include <cstdio>
#include <vector>

#define N 100
#define Master 9900
#define ELEMENT_TYPE long long int

struct S25 {
  bool action();
};

bool S25::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(), x = 1; it != vec.end();) {
    m += *it +x;
    x++;
    it++;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub25()
{
  S25 obj;

  if (obj.action() == true) {
    std::puts("NG 25");
  } else {
    std::puts("OK 25");
  }
}
