#include <cstdio>
#include <string>
#include <map>
#include <limits.h>

using namespace std;

void sub41()
{
  map<int,string> names;
  int m = 1;

  for (size_t i=1; i<30; ++i) {
    names.insert(map<int,string>::value_type(i,"i"));
  }
  map<int,string>::iterator it;
  for (it = names.begin(); it != names.end(); ++it) {
    m = m + (*it).first;
  }

  if (m == 436) {
    std::puts("OK 41");
  } else {
    std::puts("NG 41");
  }
}
