#include <iostream>
using namespace std;

typedef struct STR1 {
  float  mem1;
  float  mem2;
  union STR2 {
    long  mem3;
  } STR2;
} STR1;

void sub(STR1 *str3) {
  str3->STR2.mem3 = str3->mem1 + str3->mem2;
  cout << str3->STR2.mem3 << endl;
}
int main() {
  STR1  str1[5];
  int   i;
  for (i=0; i<5; i++){
    str1[i].mem1 = 1.1;
    str1[i].mem2 = 2;
    sub(&str1[i]);
  }
}
