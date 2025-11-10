#include <cstdio>
#include <vector>

using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec3_1_3,vec3_2_3;

void func3() {
  int j=0;
  while (j<11) {
    (vec3_1_3).swap(vec3_2_3);
    j++;
  }
}

struct S3 {
  bool action();
};

bool S3::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec3_1_3.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec3_2_3.push_back(i);
  }
  
  for (int i=0; i<vec3_1_3.size(); ++i) {
    if (i == 3) {
      func3();
    }
    m += vec3_1_3[i];
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
