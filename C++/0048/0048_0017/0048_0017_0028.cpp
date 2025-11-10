#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

template<class T>
ELEMENT_TYPE add_temp(std::vector<ELEMENT_TYPE>::iterator it, T& vec, ELEMENT_TYPE m){
  if (it != vec.end()) { 
    m += *it;
    return add_temp(++it, vec, m);
  } else {
    return m;
  }
}

struct S33 {
  bool action();
};

bool S33::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator start_it; 

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  start_it = vec.begin();
  m = add_temp(start_it, vec, m);
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub33()
{
  S33 obj;

  if (obj.action() == true) {
    std::puts("NG 33");
  } else {
    std::puts("OK 33");
  }
}
