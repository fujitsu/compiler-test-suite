#include <iostream>
using namespace std;

typedef struct STR2 {
  int  mem1;
  int  mem2;
  int  mem3;
} str2;

typedef struct STR1 {
  STR2 mem_str;
}str1;

void sub(STR2 *str3) {
  str3->mem3 = str3->mem1 + str3->mem2;
  cout << str3->mem3 << endl;
}
int main() {
  STR1  str1[5];
  STR2  str2[5];
  int   i;
  for (i=0; i<5; i++){
    str2[i].mem1 = 1;
    str2[i].mem2 = 2;
    str1[i].mem_str = str2[i];
    sub(&str1[i].mem_str);
  }
}
