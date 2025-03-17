
#include <cstdio>
#include <vector>
using namespace std;
#define Master 5

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  vector<int> vec(10);

#if __cplusplus >= 201103L
  void (vector<int>::* mem_ptr)(vector<int>::size_type, const int&) = &vector<int>::resize;
#else
  auto mem_ptr = &vector<int>::resize;
#endif

  bool flag = false;
  int m=0;
  for (int i=0; i < 10; ++i) {
    vec.push_back(i);
  }
  for(vector<int>::size_type i=0; i<vec.size(); ++i){
    m++;
    if(!flag){
      (vec.*mem_ptr)(5, 10);
      flag = true;
    }
  }
  if (m != Master) {
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

