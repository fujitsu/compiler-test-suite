#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  int extern_St_i_1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1.St1_i;
  }

  static long static_St_i_1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1.St1_l;
  }

#if __cplusplus

#include <iostream>
class C1 {
  public:
    int a;
    int static static_C1() {
      struct St1 St1_1 = {3,3};
      return St1_1.St1_i;
    }
    virtual long virtual_C1() {
      struct St1 St1_1 = {3,3};
      return St1_1.St1_l;
    }
};
class C2 :public C1 {
  public:
    int b;
};

class C3 :public C2 {
  public:
    int a;
    struct St1 operator+() {
      struct St1 St1_1;
      St1_1.St1_i = 6;
      St1_1.St1_l = 60;
      return St1_1;
    }
    long virtual_C1() {
      struct St1 St1_1 = {3,3};
      return St1_1.St1_l;
    }
    C3(struct St1);
};

C3::C3(struct St1 con)
{
}

template<class T> long max (const T& a, const T& b)
{
  struct St1 St1_1;
  St1_1.St1_i = (int)a;
  St1_1.St1_l = (long)b;
  return St1_1.St1_l;
}
#endif 


#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

#if __cplusplus
#endif 

int sub (int n)
{
  struct St1 St1_1={0,0}, St1_2={0,0};

  switch (n) {
  case 1:
    return extern_St_i_1(St1_1);
  case 2:
    return static_St_i_1(St1_2);
  }

#if __cplusplus
  switch (n) {
  case 3:
    return C1::static_C1();
  case 4:
    return max( 5, 50);
  }
  {
    C1 c11, *c12 = &c11;
    C3 c3(St1_1);
  switch (n) {
  case 5:
    
  case 6:
    return c12->virtual_C1();
  }
  }
#endif 

  return 0;
}

int main()
{
  int i;

  i = sub(1);
  i = sub(2);
#if __cplusplus
  i = sub(3);
  i = sub(4);
  
  i = sub(6);
#endif 

  if (i == 0) {}
  printf(" OK \n");
  return 0;
}
