#include <iostream>
using namespace std;

typedef struct STR1 {
  float  mem1;
  int    mem2;
  long   mem3;
} STR1;

typedef struct LOC1 {
  int   loc1;
} LOC1;

void sub(float sub_mem1, LOC1 *sub_loc) {
  STR1  str1;
  str1.mem1 = sub_mem1;
  str1.mem2 = sub_loc->loc1;
  str1.mem3 = str1.mem1 + str1.mem2;
  cout << str1.mem3 << endl;
}
int main() {
  LOC1   loc_str;
  float  local1;
  local1 = 1.1;
  loc_str.loc1 = 2;
  sub(local1, &loc_str);
}
