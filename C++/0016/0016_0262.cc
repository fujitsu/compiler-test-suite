class A {
public:
  char               c_[3];
  signed char        c_s[3];
  unsigned char      c_u[3];
  short              s_[3];
  signed short       s_s[3];
  unsigned short     s_u[3];
  int                i_[3];
  signed int         i_s[3];
  unsigned int       i_u[3];
  long               l_[3];
  signed long        l_s[3];
  unsigned long      l_u[3];
  long long          L_[3];
  signed long long   L_s[3];
  unsigned long long L_u[3];
  float              f[3];
  double             d[3];
  long double        ld[3];
  bool               b[3];
  wchar_t            w[3];
}aobj;

A *paobj = &aobj;

char               (A::* Mc_)[3] = &A::c_;
signed char        (A::* Mc_s)[3] = &A::c_s;
unsigned char      (A::* Mc_u)[3] = &A::c_u;
short              (A::* Ms_)[3] = &A::s_;
signed short       (A::* Ms_s)[3] = &A::s_s;
unsigned short     (A::* Ms_u)[3] = &A::s_u;
int                (A::* Mi_)[3] = &A::i_;
signed int         (A::* Mi_s)[3] = &A::i_s;
unsigned int       (A::* Mi_u)[3] = &A::i_u;
long               (A::* Ml_)[3] = &A::l_;
signed long        (A::* Ml_s)[3] = &A::l_s;
unsigned long      (A::* Ml_u)[3] = &A::l_u;
long long          (A::* ML_)[3] = &A::L_;
signed long long   (A::* ML_s)[3] = &A::L_s;
unsigned long long (A::* ML_u)[3] = &A::L_u;
float              (A::* Mf)[3] = &A::f;
double             (A::* Md)[3] = &A::d;
long double        (A::* Mld)[3] = &A::ld;
bool               (A::* Mb)[3] = &A::b;
wchar_t            (A::* Mw)[3] = &A::w;


class B {
public:
  A ap[3];
}bobj;

B *pbobj = &bobj;

A (B::* Maobj)[3] = &B::ap;


typedef  char               Tc_;
typedef  signed char        Tc_s;
typedef  unsigned char      Tc_u;
typedef  short              Ts_;
typedef  signed short       Ts_s;
typedef  unsigned short     Ts_u;
typedef  int                Ti_;
typedef  signed int         Ti_s;
typedef  unsigned int       Ti_u;
typedef  long               Tl_;
typedef  signed long        Tl_s;
typedef  unsigned long      Tl_u;
typedef  long long          TL_;
typedef  signed long long   TL_s;
typedef  unsigned long long TL_u;
typedef  float              Tf;
typedef  double             Td;
typedef  long double        Tld;
typedef  bool               Tb;
typedef  wchar_t            Tw;

class C {
public:
  Tc_   c_[3];
  Tc_s  c_s[3];
  Tc_u  c_u[3];
  Ts_   s_[3];
  Ts_s  s_s[3];
  Ts_u  s_u[3];
  Ti_   i_[3];
  Ti_s  i_s[3];
  Ti_u  i_u[3];
  Tl_   l_[3];
  Tl_s  l_s[3];
  Tl_u  l_u[3];
  TL_   L_[3];
  TL_s  L_s[3];
  TL_u  L_u[3];
  Tf    f[3];
  Td    d[3];
  Tld   ld[3];
  Tb    b[3];
  Tw    w[3];
}cobj;

C *pcobj = &cobj;

Tc_  (C::* MTc_)[3] = &C::c_;
Tc_s (C::* MTc_s)[3] = &C::c_s;
Tc_u (C::* MTc_u)[3] = &C::c_u;
Ts_  (C::* MTs_)[3] = &C::s_;
Ts_s (C::* MTs_s)[3] = &C::s_s;
Ts_u (C::* MTs_u)[3] = &C::s_u;
Ti_  (C::* MTi_)[3] = &C::i_;
Ti_s (C::* MTi_s)[3] = &C::i_s;
Ti_u (C::* MTi_u)[3] = &C::i_u;
Tl_  (C::* MTl_)[3] = &C::l_;
Tl_s (C::* MTl_s)[3] = &C::l_s;
Tl_u (C::* MTl_u)[3] = &C::l_u;
TL_  (C::* MTL_)[3] = &C::L_;
TL_s (C::* MTL_s)[3] = &C::L_s;
TL_u (C::* MTL_u)[3] = &C::L_u;
Tf   (C::* MTf)[3] = &C::f;
Td   (C::* MTd)[3] = &C::d;
Tld  (C::* MTld)[3] = &C::ld;
Tb   (C::* MTb)[3] = &C::b;
Tw   (C::* MTw)[3] = &C::w;


template <class T> class D {
  T a;
};
D<int> dobj;
class E {
public:
  D<int> dp[3];
};
E eobj;
E *peobj = &eobj;

D<int> (E::* Tdobj)[3] = &E::dp;


int f(int a){ return a+1; }
class F {
public:
  int (*fp[3])(int);
}fobj;
F *pfobj = &fobj;

int (* (F::* Mfunc)[3])(int) = &F::fp;


template <class T2> int tf(T2 a){
  return a;
}
template <class T> class G {
public:
  T a;
  int (*tfp[3])(int);
};
G<int> gobj = {1,&tf};
G<int> *pgobj = &gobj;
int (*(G<int>::* Mtf)[3])(int) = &G<int>::tfp;

#include <stdio.h>
int main(){

  puts("ok");
}
