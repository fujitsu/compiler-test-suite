#include <iostream>
using namespace std;

typedef struct STR2 {
  long  mem1;
  float mem2;
  union STR3 {
    long   mem3;
    float  mem4;
  } str3;
} STR2;

typedef struct STR1 {
  STR2 mem_str;
} STR1;

void sub(STR2 str4) {
  str4.str3.mem4 = str4.mem1 + str4.mem2; 
  cout << str4.str3.mem4 << endl;   
}
int main() {
  STR1  str1, *str1_p;
  str1.mem_str.mem1 = 1;
  str1.mem_str.mem2 = 2.1;
  str1_p = &str1;
  sub(str1_p->mem_str);
}
