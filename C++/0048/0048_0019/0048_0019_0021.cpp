#include <iostream>
#include <vector>

#define N 100
#define Master 15147

struct S22 {
  bool action();
};

struct foo {
  int x;
  int y;
  int z;
};

bool S22::action() {
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

  for (it = vec.begin(); it != vec.end(); it++) {
    m += it->x;
    m += it->y;
    m += it->z;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub22()
{
  S22 obj;

  if (obj.action() == true) {
    std::puts("NG 22");
  } else {
    std::puts("OK 22");
  }
}
