#include <iostream>
using namespace std;

typedef struct STR1 {
  float  mem1;
  float  mem2;
  union STR2 {
    long   mem3;
  } str2;
} STR1;

void sub(STR1 *str3) {
  str3->str2.mem3 = str3->mem1 + str3->mem2;
  cout << str3->str2.mem3 << endl;
}
int main() {
  STR1  str1;
  str1.mem1 = 1.1;
  str1.mem2 = 2.2;
  sub(&str1);
}
