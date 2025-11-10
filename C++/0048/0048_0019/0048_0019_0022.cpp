#include <iostream>
#include <vector>

#define N 101
#define Master 7650

struct S23 {
  bool action();
};

struct foo {
  int x;
  int y;
  int z;
};

bool S23::action() {
  bool flg = false;
  int m = 0;

  std::vector<foo> vec;
  std::vector<foo>::iterator it;  
  foo a;

  for (size_t i=1; i<N; ++i) {
    a.x = i;
    a.y = i+1;
    a.z = i+2;
    vec.push_back(a);
  }

  for (it = vec.begin(); it != vec.end(); it=it+2) {
    m += it->x;
    m += it->y;
    m += it->z;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub23()
{
  S23 obj;

  if (obj.action() == true) {
    std::puts("NG 23");
  } else {
    std::puts("OK 23");
  }
}
