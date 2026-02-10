#include <stdio.h>

#if __cplusplus
  class Cl1 {
    public:
      int  Cl1_i;
      long Cl1_l;
  };

  class Cl1 extern_Cl1(class Cl1 Cl1_1) {
    Cl1_1.Cl1_i = 1;
    Cl1_1.Cl1_l = 10;
    return Cl1_1;
  }

  static class Cl1 static_Cl1(class Cl1 Cl1_1) {
    Cl1_1.Cl1_i = 1;
    Cl1_1.Cl1_l = 10;
    return Cl1_1;
  }

#if __cplusplus

#include <iostream>
class C1 {
  public:
    int a;
    class Cl1 static static_C1() {
      class Cl1 Cl1_1 = {3,3};
      return Cl1_1;
    }
    virtual class Cl1 virtual_C1() {
      class Cl1 Cl1_1 = {3,3};
      return Cl1_1;
    }
};
class C2 :public C1 {
  public:
    int b;
};

class C3 :public C2 {
  public:
    int a;
    class Cl1 operator+() {
      class Cl1 Cl1_1;
      Cl1_1.Cl1_i = 6;
      Cl1_1.Cl1_l = 60;
      return Cl1_1;
    }
    class Cl1 virtual_C1() {
      class Cl1 Cl1_1 = {3,3};
      return Cl1_1;
    }
    C3(class Cl1);
};

C3::C3(class Cl1 con)
{
}

template<class T> class Cl1 max (const T& a, const T& b)
{
  class Cl1 Cl1_1;
  Cl1_1.Cl1_i = (int)a;
  Cl1_1.Cl1_l = (long)b;
  return Cl1_1;
}
#endif 

#if __cplusplus
#endif 

class Cl1 sub (int n)
{
  class Cl1 Cl1_1={0,0}, Cl1_2={0,0};

  switch (n) {
  case 1:
    return extern_Cl1(Cl1_1);
  case 2:
    return static_Cl1(Cl1_2);
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
    C3 c3(Cl1_1);
    switch (n) {
    case 5:
      return +c3;
    case 6:
      return c12->virtual_C1();
    }
  }
#endif 

  return Cl1_1;
}
int main()
{
  class Cl1 Cl1_1={0,0};

  Cl1_1 = sub(1);
  Cl1_1 = sub(2);
#if __cplusplus
  Cl1_1 = sub(3);
  Cl1_1 = sub(4);
  Cl1_1 = sub(5);
  Cl1_1 = sub(6);
#endif 

  Cl1_1 = extern_Cl1(Cl1_1);
  printf(" OK \n");
  return 0;
}


#else  
int main()
{

  printf(" OK \n");
  return 0;
}
#endif 
