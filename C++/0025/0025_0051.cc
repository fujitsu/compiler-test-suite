#include <iostream>
using namespace std;

typedef struct STR1 {
  float  mem1;
  int    mem2;
  long   mem3;
} STR1;

void sub(float sub_mem1, int sub_mem2) {
  STR1  str1;
  str1.mem1 = sub_mem1;
  str1.mem2 = sub_mem2;
  str1.mem3 = str1.mem1 + str1.mem2;
  cout << str1.mem3 << endl;
}
int main() {
  float  local1;
  long   local2;
  local1 = 1.1;
  local2 = 2;
  sub(local1, local2);
}
