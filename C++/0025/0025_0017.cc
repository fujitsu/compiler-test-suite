#include <iostream>
using namespace std;

typedef struct STR2 {
  float mem;
} STR2;

typedef struct STR1 {
  STR2 mem_str;
} STR1;

STR1 sub(float m1, float m2) {
  STR1 str;
  str.mem_str.mem = m1 + m2;
  return str;
}
int main() {
  float mem1, mem2;
  STR1  rtn_str;
  mem1 = 1.1;
  mem2 = 2.2; 
  rtn_str = sub(mem1, mem2);
  cout << rtn_str.mem_str.mem << endl;
}
