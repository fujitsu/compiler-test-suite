#include <iostream>
using namespace std;

typedef struct STR1 {
  float  mem;
} STR1;

STR1 sub(float m1, float m2) {
  STR1 str;
  str.mem = m1 + m2;
  return str;
}
int main() {
  float mem1, mem2;
  STR1  rtn_str;
  mem1 = 1.1;
  mem2 = 2.2;
  rtn_str = sub(mem1, mem2);
  cout << rtn_str.mem << endl;
}
