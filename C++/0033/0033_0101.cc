#ifdef _OPENMP
#include <omp.h>
#endif
extern "C" void printf(char *, ...);
class A0 {
public:
  int a;
};
class A1 {
public:
  int a;
};
class A2 {
public:
  int a;
};
class A3 {
public:
  int a;
};
class A4 {
public:
  int a;
};
class A5 {
public:
  int a;
};
class A6 {
public:
  int a;
};
class A7 {
public:
  int a;
};
class A8 {
public:
  int a;
};
class A9 {
public:
  int a;
};
class A10 {
public:
  int a;
};
class A11 {
public:
  int a;
};
class A12 {
public:
  int a;
};
class A13 {
public:
  int a;
};
class A14 {
public:
  int a;
};
class A15 {
public:
  int a;
};
class A16 {
public:
  int a;
};
class A17 {
public:
  int a;
};
class A18 {
public:
  int a;
};
class A19 {
public:
  int a;
};
int A0::*p0 = &A0::a;
int A1::*p1 = &A1::a;
int A2::*p2 = &A2::a;
int A3::*p3 = &A3::a;
int A4::*p4 = &A4::a;
int A5::*p5 = &A5::a;
int A6::*p6 = &A6::a;
int A7::*p7 = &A7::a;
int A8::*p8 = &A8::a;
int A9::*p9 = &A9::a;
int A10::*p10 = &A10::a;
int A11::*p11 = &A11::a;
int A12::*p12 = &A12::a;
int A13::*p13 = &A13::a;
int A14::*p14 = &A14::a;
int A15::*p15 = &A15::a;
int A16::*p16 = &A16::a;
int A17::*p17 = &A17::a;
int A18::*p18 = &A18::a;
int A19::*p19 = &A19::a;
int main() {
  int work = 0, num = 1;
#ifdef _OPENMP
  num = omp_get_max_threads();
#endif
#pragma omp parallel
#pragma omp atomic
  work++;

  if (work == num)
    printf("ok\n");
  else
    printf("ng\n");
}
