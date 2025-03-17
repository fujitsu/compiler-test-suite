#include <iostream>
#include <map>
#include <limits.h>
using namespace std;
void func();
int main() {
  map<int,string> names;
  int m = 1;

  for (size_t i=1; i<30; ++i) {
    names.insert(map<int,string>::value_type(i,"i"));
  }
  map<int,string>::iterator it;
  for (size_t it = 0; it != names.size(); ++it) {
    m = m + it;
  }

  if (m == 407) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  return 0;
}
