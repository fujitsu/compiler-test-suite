#include <cstdio>




struct A_3 {
  virtual void f0() {
    printf("CHECK 0\n");
  }
  virtual void f1() {
    printf("CHECK 1\n");
  }
};
typedef void (A_3::*MFP)();

MFP f0_a() {
  return &A_3::f0;
}
MFP f0_b() {
  return &A_3::f1;
}

#ifdef ORIGINAL
int main() {
  A a;

  
  
  MFP x = f0_a();
  MFP y = f0_b();
  if (x)
    (a.*x)();
  if (y)
    (a.*y)();

  return 0;
}
#else
void sub3()
{
  A_3 a;

  
  
  MFP x = f0_a();
  MFP y = f0_b();
  if (x)
    (a.*x)();
  if (y)
    (a.*y)();
}
#endif
