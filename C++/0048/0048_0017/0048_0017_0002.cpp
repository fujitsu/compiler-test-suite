#include <cstdio>
#include <vector>

#define N 100
#define NN 10
#define Master 55
#define ELEMENT_TYPE long long int

struct S3 {
  bool action();
};

bool S3::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m += *it;
    vec.resize(NN);
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub3()
{
  S3 obj;

  if (obj.action() == true) {
    std::puts("NG 3");
  } else {
    std::puts("OK 3");
  }
}
