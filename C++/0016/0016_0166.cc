const int aa =10;
char volatile bb;
const volatile short cc=10;
class Dummy{
}dm_obj;



class CA {
  
  int a;
  unsigned int (*b)[3]; 
  void f1(){}
  typedef int I;
  class N1 {};
  static int st_a;
public:
  int c;
  unsigned short (*d)[3]; 
  void f2(){}
  typedef char J;
  class N2 {};
  static int st_b;
private:
  int e;
  unsigned int (*f)[3]; 
  void f3(){}
  typedef char K;
  class N3 {};
  static int st_c;
protected:
  int g;
  unsigned char (*h)[3]; 
  void f4(){}
  typedef char H;
  class N4 {};
  static int st_d;
};


class CB {
public:
  int a;
public:
  char b;
  short c;
protected: 
  float d;
  void *e;
protected:
  int f;
  float g;
private:
  char h;
private:
  short i;
public:
  void f1(){}
public:
  int f2(int){return 0;}
protected:
  class N1 {};
protected:
  class N2{};
private:
  static int st_a;
private:
  static int st_b;
public:
  typedef int T1;
public:
  typedef char T2;
}; 


struct SA {
  
  int a;
  unsigned char (*b)[3]; 
  void f1(){}
  typedef int I;
  class N1 {};
  static int st_a;
public:
  int c;
  unsigned int (*d)[3]; 
  void f2(){}
  typedef char J;
  class N2 {};
  static int st_b;
private:
  int e;
  unsigned char (*f)[3]; 
  void f3(){}
  typedef char K;
  class N3 {};
  static int st_c;
protected:
  int g;
  unsigned short (*h)[3]; 
  void f4(){}
  typedef char H;
  class N4 {};
  static int st_d;
};


struct SB {
public:
  int a;
public:
  char b;
  short c;
protected: 
  float d;
  void *e;
protected:
  int f;
  float g;
private:
  char h;
private:
  short i;
public:
  void f1(){}
public:
  int f2(int){return 0;}
protected:
  class N1 {};
protected:
  class N2{};
private:
  static int st_a;
private:
  static int st_b;
public:
  typedef int T1;
public:
  typedef char T2;
}; 


template <class T, int I> class TPA{
  
  int a;
  unsigned char (*b)[3]; 
  void f1(){}
  typedef int II;
  class N1 {};
  static int st_a;
public:
  int c;
  unsigned short (*d)[3]; 
  void f2(){}
  typedef char J;
  class N2 {};
  static int st_b;
private:
  int e;
  unsigned char (*f)[3]; 
  void f3(){}
  typedef char K;
  class N3 {};
  static int st_c;
protected:
  int g;
  unsigned long (*h)[3]; 
  void f4(){}
  typedef char H;
  class N4 {};
  static int st_d;
};
TPA<char, 10> tpaobj;


template <class T > class TPB {
public:
  T a;
public:
  T b;
  short c;
protected: 
  T d;
  T *e;
protected:
  T f;
  float g;
private:
  char h;
private:
  short i;
public:
  void f1(){}
public:
  int f2(int){}
protected:
  class N1 {};
protected:
  class N2{};
private:
  static int st_a;
private:
  static int st_b;
public:
  typedef int T1;
public:
  typedef char T2;
}; 
TPB<short> tpbobj;


class CC {
public:
  const volatile int a;
  const int b;
  volatile int c;
  void *volatile* d;
  char const * volatile e;
  const float * f;
  const int &i;
  char volatile & j;
  const volatile short & k;


  int const volatile Dummy::*l;
  char volatile Dummy::*m;
  Dummy const n;
  const int volatile * const * volatile o;

  CC ():a(1),b(2),i(aa),j(bb),k(cc),n(dm_obj){}
}ccobj;

struct CC_a {
  int const g[3];
  volatile const char h[3][4];
}cc_aobj={{1,2,3},{1,2,3,4,5,6,7,8,9,0,1,2}};


class CD_friend{
public:
  void cd_func(){}
};
void cd_fr_func(int,char ){}
class CD {
public:
  friend class CD_friend;
private:
  friend void cd_fr_func(int,char);
}cdobj;


class CE_BASE {
public:
  int a;
  void f1(){}
protected:
  int b;
  void f2(){}
};
class CE: private CE_BASE{
public:
  using CE_BASE::a;
  using CE_BASE::f1;
protected:
  using CE_BASE::b;
  using CE_BASE::f2;
};


typedef char (*Dummy_type)[2];
template <class T, int i> class Dummy_temp {};
class CF {
public:
  void f1(){}
  int f2(int i){return 0;}
  char * f3(short i, int *j){return 0;}
  float f4(int (*p)[3], short &q, int Dummy::*r, int (*s)()){return 0;}
  double f5(int a[5][4], Dummy b, Dummy &c){return 0;}
  void f6(Dummy_type a, Dummy_temp<int ,10> b){}
  void f7(int (*(*(*a)[2])[5])()) {}
}cfobj;

class CG {
public:
  void (*fp1)();
  int (*fp2)(int i);
  char * (*fp3)(short i, int *j);
  float (*fp4)(int (*p)[3], short &q, int Dummy::*r, int (*s)());
  double (*fp5)(int a[5][4], Dummy b, Dummy &c);
  void (*fp6)(Dummy_type a, Dummy_temp<int ,10> b);
  void (*fp7)(int (*(*(*a)[2])[5])()) ;
}cgobj;


class CH_A {
  int ch_a;
};
class CH_B: public CH_A {
private:
  char ch_b; 
};
class CH_C: CH_A,protected CH_B {
public:
  short * ch_c;
};
class CH_D: private CH_C {
protected:
  float ch_d;
};
class CH_E:public CH_A,CH_B, private CH_C,protected CH_D {
public:
  int ch_e;
}cheobj;

#include <stdio.h>
int main(){
  puts("ok");
}
