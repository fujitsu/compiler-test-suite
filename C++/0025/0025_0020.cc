#include <iostream>
using namespace std;

typedef struct STR2 {
  float mem1;
  float mem2;
  float mem3;
} STR2;

typedef struct STR1 {
  STR2 mem_str;
} STR1;

void sub(STR2 str3) {
  str3.mem3 = str3.mem1 + str3.mem2; 
  cout << str3.mem3 << endl;   
}
int main() {
  STR1  str1, *str1_p;
  str1.mem_str.mem1 = 1.1;
  str1.mem_str.mem2 = 2.2;
  str1_p = &str1;
  sub(str1_p->mem_str);
}
