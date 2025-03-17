#include <iostream>
using namespace std;

typedef struct STR1 {
  float  mem1;
  float  mem2;
  float  mem3;
} STR1;

void sub(float sub_mem1, long sub_mem2) {
  STR1  str1;
  str1.mem1 = sub_mem1;
  str1.mem2 = sub_mem2;
  str1.mem3 = str1.mem1 + str1.mem2;
  cout << str1.mem3 << endl;
}
int main() {
  float  local1;
  int    local2;
  local1 = 1.1;
  local2 = 2;
  sub(local1, local2);
}
