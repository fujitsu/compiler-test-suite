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

union Un1 sub (int n)
{
  union Un1 Un1_1={0}, Un1_2={0};

  switch (n) {
  case 1:
    return extern_Un1(Un1_1);
  case 2:
    return static_Un1(Un1_2);
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
    C3 c3(Un1_1);
    switch (n) {
    case 5:
      return +c3;
    case 6:
      return c12->virtual_C1();
    }
  }
#endif 

  return Un1_1;
}

int main()
{
  union Un1 Un1_1={0};

  Un1_1 = sub(1);
  Un1_1 = sub(2);
#if __cplusplus
  Un1_1 = sub(3);
  Un1_1 = sub(4);
  Un1_1 = sub(5);
  Un1_1 = sub(6);
#endif 

  if (Un1_1.Un1_i == 0) {}
  printf(" OK \n");
  return 0;
}
