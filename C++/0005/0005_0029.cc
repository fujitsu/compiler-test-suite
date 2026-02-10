#include <stdio.h>

  int extern_ln1(int ln1_1) {
    ln1_1 = 1;
    return ln1_1;
  }

  static int static_ln1(int ln1_1) {
    ln1_1 = 10;
    return ln1_1;
  }

#if __cplusplus

#include <iostream>
class C1 {
  public:
    int a;
    int static static_C1() {
      int ln1_1 = 3;
      return ln1_1;
    }
    virtual int virtual_C1() {
      int ln1_1 = 3;
      return ln1_1;
    }
};
class C2 :public C1 {
  public:
    int b;
};

class C3 :public C2 {
  public:
    int a;
    int operator+() {
      int ln1_1;
      ln1_1 = 6;
      ln1_1 = 60;
      return ln1_1;
    }
    int virtual_C1() {
      int ln1_1 = 3;
      return ln1_1;
    }
    C3(int);
};

C3::C3(int con)
{
}

template<class T> int max (const T& a, const T& b)
{
  int ln1_1;
  ln1_1 = (int)a + (long)b;
  return ln1_1;
}
#endif 


#if defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#endif 

#if __cplusplus
#endif 

int main()
{
  int ln1_0=0;
  int ln1_1 = extern_ln1(ln1_0);
  int ln1_2 = static_ln1(ln1_0);

#if __cplusplus
  int ln1_3 = C1::static_C1();
  int ln1_4 = max( 5, 50);
  {
    C1 c11, *c12 = &c11;
    C3 c3(ln1_1);
    int ln1_5 = +c3;
    int ln1_6 = c12->virtual_C1();
  }
#endif 

  printf(" OK \n");
  return 0;
}
