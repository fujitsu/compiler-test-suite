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

int main()
{
  struct St1 St1_1={0,0}, St1_2={0,0};

  St1_1.St1_i = extern_St_i_1(St1_1);
  St1_2.St1_l = static_St_i_1(St1_2);

#if __cplusplus
  St1_1.St1_i = C1::static_C1();
  St1_1.St1_l = max( 5, 50);
  {
    C1 c11, *c12 = &c11;
    C3 c3(St1_1);
    St1_1 = +c3;
    St1_1.St1_l = c12->virtual_C1();
  }
#endif 

  printf(" OK \n");
  return 0;
}
