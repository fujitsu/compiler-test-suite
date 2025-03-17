#include <iostream>
using namespace std;

typedef struct STR1 {
  int  mem1;
  int  mem2;
  int  mem3;
} STR1;

void sub(STR1 *str2) {
  str2->mem3 = str2->mem1 + str2->mem2;
  cout << str2->mem3;
}
int main() {
  STR1  str1;
  str1.mem1 = 1;
  str1.mem2 = 2;
  sub(&str1);
}
