#include <cstdio>

struct B1 {
  B1() {puts("B1()");}
  B1(int a) {puts("B1(int)");};
};

struct B2 {
  B2() {puts("B2()");};
  B2(int a) {puts("B2(int)");};
};

#if 1
struct D1 : B1, B2 {
  using B1::B1;
  
}; 

#endif

struct D2 : B1, B2 {
  using B1::B1;
  using B2::B2;
  D2(int a):B1(a),B2(a) {puts("D2");}; 
};

int main()
{
  
  D1 d1(1);
}
