#include <iostream>
using namespace std;

typedef struct STR2 {
  int  mem1;
  int  mem2;
  int  mem3;
} STR2;

typedef struct STR1 {
  STR2 mem_str;
} STR1;

void sub(float sub_mem1, float sub_mem2) {
  STR1  str1;
  str1.mem_str.mem1 = sub_mem1;
  str1.mem_str.mem2 = sub_mem2;
  str1.mem_str.mem3 = str1.mem_str.mem1 + str1.mem_str.mem2;
  cout << str1.mem_str.mem3 << endl;
}
int main() {
  float  local1,local2;
  local1 = 1.1;
  local2 = 2.2;
  sub(local1, local2);
}
