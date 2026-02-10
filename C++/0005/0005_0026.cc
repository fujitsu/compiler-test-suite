#include <stdio.h>

  struct St1 {
    int  St1_i;
    long St1_l;
  };

  struct St1 extern_St1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1;
  }

  static struct St1 static_St1(struct St1 St1_1) {
    St1_1.St1_i = 1;
    St1_1.St1_l = 10;
    return St1_1;
  }

#if __cplusplus

#include <iostream>
class C1 {
  public:
    int a;
    struct St1 static static_C1() {
      struct St1 St1_1 = {3,3};
      return St1_1;
    }
    virtual struct St1 virtual_C1() {
      struct St1 St1_1 = {3,3};
      return St1_1;
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
    struct St1 virtual_C1() {
      struct St1 St1_1 = {3,3};
      return St1_1;
    }
    C3(struct St1);
};

C3::C3(struct St1 con)
{
}

template<class T> struct St1 max (const T& a, const T& b)
{
  struct St1 St1_1;
  St1_1.St1_i = (int)a;
  St1_1.St1_l = (long)b;
  return St1_1;
}
#endif 


#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

#if __cplusplus
#endif 

int main()
{
  struct St1 St1_0 = {0, 0};
  struct St1 St1_1 = extern_St1(St1_0);
  struct St1 St1_2 = static_St1(St1_0);

#if __cplusplus
  struct St1 St1_3 = C1::static_C1();
  struct St1 St1_4 = max( 5, 50);
  {
    C1 c11, *c12 = &c11;
    C3 c3(St1_1);
    struct St1 St1_5 = +c3;
    struct St1 St1_6 = c12->virtual_C1();
  }
#endif 

  printf(" OK \n");
  return 0;
}
