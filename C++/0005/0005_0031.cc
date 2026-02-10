#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  int * extern_St1(struct St1 St1_1) {
    int *pi;
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    pi =&(St1_1.St1_i);
    return pi;
  }

  static long * static_St1(struct St1 St1_1) {
    long *pl;
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    pl =&(St1_1.St1_l);
    return pl;
  }

#if __cplusplus

#include <iostream>
class C1 {
  public:
    int a;
    static int * static_C1() {
      int *pi;
      struct St1 St1_1 = {3,3};
      pi =&(St1_1.St1_i);
      return pi;
    }
    virtual long * virtual_C1() {
      long *pl;
      struct St1 St1_1 = {3,3};
      pl =&(St1_1.St1_l);
      return pl;
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
    long * virtual_C1() {
      long *pl;
      struct St1 St1_1 = {3,3};
      pl =&(St1_1.St1_l);
      return pl;
    }
    C3(struct St1);
};

C3::C3(struct St1 con)
{
}

template<class T> long * max (const T& a, const T& b)
{
  long *pl;
  struct St1 St1_1;
  St1_1.St1_i = (int)a;
  St1_1.St1_l = (long)b;
  pl =&(St1_1.St1_l);
  return pl;
}
#endif 


#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

#if __cplusplus
#endif 

int main()
{
  struct St1 St1_1={0,0}, St1_2={0,0};

  int * pi1 = extern_St1(St1_1);
  long *pl1 = static_St1(St1_2);

  if(pi1 && pl1) {}

#if __cplusplus
  int * pi2 = C1::static_C1();
  long *pl2 = max( 5, 50);
  {
    C1 c11, *c12 = &c11;
    C3 c3(St1_1);
    St1_1 = +c3;
    long *pl3 = c12->virtual_C1();
  }
#endif 

  printf(" OK \n");
  return 0;
}
