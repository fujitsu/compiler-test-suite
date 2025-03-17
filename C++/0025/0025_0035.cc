#include <iostream>
using namespace std;

typedef struct STR2 {
  long  mem1;
  float mem2;
  union STR3 {
    long  mem3;
    float mem4;
  } STR3;
} STR2;

typedef struct STR1 {
  STR2  mem_str;
} str1;

void sub(STR2 *str4) {
  str4->STR3.mem4 = str4->mem1 + str4->mem2;
  cout << str4->STR3.mem4 << endl;
}
int main() {
  STR1  str1[5];
  STR2  str2[5];
  int   i;
  for (i=0; i<5; i++){
    str2[i].mem1 = i;
    str2[i].mem2 = 2.2;
    str1[i].mem_str = str2[i];
    sub(&str1[i].mem_str);
  }
}
