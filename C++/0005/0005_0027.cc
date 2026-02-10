#include <stdio.h>

  union Un1 {
    int  Un1_i;
    long Un1_l;
  };

  union Un1 extern_Un1(union Un1 Un1_1) {
    Un1_1.Un1_i = 1;
    Un1_1.Un1_l = 10;
    return Un1_1;
  }

  static union Un1 static_Un1(union Un1 Un1_1) {
    Un1_1.Un1_i = 1;
    Un1_1.Un1_l = 10;
    return Un1_1;
  }

#if __cplusplus

#include <iostream>
class C1 {
  public:
    int a;
    union Un1 static static_C1() {
      union Un1 Un1_1 = {3};
      return Un1_1;
    }
    virtual union Un1 virtual_C1() {
      union Un1 Un1_1 = {3};
      return Un1_1;
    }
};
class C2 :public C1 {
  public:
    int b;
};

class C3 :public C2 {
  public:
    int a;
    union Un1 operator+() {
      union Un1 Un1_1;
      Un1_1.Un1_i = 6;
      Un1_1.Un1_l = 60;
      return Un1_1;
    }
    union Un1 virtual_C1() {
      union Un1 Un1_1 = {3};
      return Un1_1;
    }
    C3(union Un1);
};

C3::C3(union Un1 con)
{
}

template<class T> union Un1 max (const T& a, const T& b)
{
  union Un1 Un1_1;
  Un1_1.Un1_i = (int)a;
  Un1_1.Un1_l = (long)b;
  return Un1_1;
}
#endif 


#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

#if __cplusplus
#endif 

int main()
{
  union Un1 Un1_0={0};
  union Un1 Un1_1 = extern_Un1(Un1_0);
  union Un1 Un1_2 = static_Un1(Un1_0);

#if __cplusplus
  union Un1 Un1_3 = C1::static_C1();
  union Un1 Un1_4 = max( 5, 50);
  {
    C1 c11, *c12 = &c11;
    C3 c3(Un1_1);
    union Un1 Un1_5 = +c3;
    union Un1 Un1_6 = c12->virtual_C1();
  }
#endif 

  printf(" OK \n");
  return 0;
}
