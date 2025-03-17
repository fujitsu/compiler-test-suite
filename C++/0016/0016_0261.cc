  char               ac_='1';
  signed char        ac_s='2';
  unsigned char      ac_u='3';
  short              as_=4;
  signed short       as_s=5;
  unsigned short     as_u=6;
  int                ai_=7;
  signed int         ai_s=8;
  unsigned int       ai_u=9;
  long               al_=10;
  signed long        al_s=11;
  unsigned long      al_u=12;
  long long          aL_=13;
  signed long long   aL_s=14;
  unsigned long long aL_u=15;
  float              af=16.0f;
  double             ad=17.0;
  long double        ald=18.0l;
  bool               ab=1;
  wchar_t            aw=L'1';


class A {
public:
  char               *c_;
  signed char        *c_s;
  unsigned char      *c_u;
  short              *s_;
  signed short       *s_s;
  unsigned short     *s_u;
  int                *i_;
  signed int         *i_s;
  unsigned int       *i_u;
  long               *l_;
  signed long        *l_s;
  unsigned long      *l_u;
  long long          *L_;
  signed long long   *L_s;
  unsigned long long *L_u;
  float              *f;
  double             *d;
  long double        *ld;
  bool               *b;
  wchar_t            *w;
}aobj={
  &ac_,&ac_s,&ac_u,&as_,&as_s,&as_u,&ai_,&ai_s,&ai_u,
  &al_,&al_s,&al_u,&aL_,&aL_s,&aL_u,&af,&ad,&ald,&ab,&aw
  };

A *paobj = &aobj;

char               * A::* Mc_ = &A::c_;
signed char        * A::* Mc_s = &A::c_s;
unsigned char      * A::* Mc_u = &A::c_u;
short              * A::* Ms_ = &A::s_;
signed short       * A::* Ms_s = &A::s_s;
unsigned short     * A::* Ms_u = &A::s_u;
int                * A::* Mi_ = &A::i_;
signed int         * A::* Mi_s = &A::i_s;
unsigned int       * A::* Mi_u = &A::i_u;
long               * A::* Ml_ = &A::l_;
signed long        * A::* Ml_s = &A::l_s;
unsigned long      * A::* Ml_u = &A::l_u;
long long          * A::* ML_ = &A::L_;
signed long long   * A::* ML_s = &A::L_s;
unsigned long long * A::* ML_u = &A::L_u;
float              * A::* Mf = &A::f;
double             * A::* Md = &A::d;
long double        * A::* Mld = &A::ld;
bool               * A::* Mb = &A::b;
wchar_t            * A::* Mw = &A::w;


class B {
public:
  A* ap;
}bobj={&aobj};
B *pbobj = &bobj;
A * B::* Maobj=&B::ap;


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
  Tc_   *c_;
  Tc_s  *c_s;
  Tc_u  *c_u;
  Ts_   *s_;
  Ts_s  *s_s;
  Ts_u  *s_u;
  Ti_   *i_;
  Ti_s  *i_s;
  Ti_u  *i_u;
  Tl_   *l_;
  Tl_s  *l_s;
  Tl_u  *l_u;
  TL_   *L_;
  TL_s  *L_s;
  TL_u  *L_u;
  Tf    *f;
  Td    *d;
  Tld   *ld;
  Tb    *b;
  Tw    *w;
}cobj={
  &ac_,&ac_s,&ac_u,&as_,&as_s,&as_u,&ai_,&ai_s,&ai_u,
  &al_,&al_s,&al_u,&aL_,&aL_s,&aL_u,&af,&ad,&ald,&ab,&aw
  };

C *pcobj = &cobj;

Tc_  * C::* MTc_ = &C::c_;
Tc_s * C::* MTc_s = &C::c_s;
Tc_u * C::* MTc_u = &C::c_u;
Ts_  * C::* MTs_ = &C::s_;
Ts_s * C::* MTs_s = &C::s_s;
Ts_u * C::* MTs_u = &C::s_u;
Ti_  * C::* MTi_ = &C::i_;
Ti_s * C::* MTi_s = &C::i_s;
Ti_u * C::* MTi_u = &C::i_u;
Tl_  * C::* MTl_ = &C::l_;
Tl_s * C::* MTl_s = &C::l_s;
Tl_u * C::* MTl_u = &C::l_u;
TL_  * C::* MTL_ = &C::L_;
TL_s * C::* MTL_s = &C::L_s;
TL_u * C::* MTL_u = &C::L_u;
Tf   * C::* MTf = &C::f;
Td   * C::* MTd = &C::d;
Tld  * C::* MTld = &C::ld;
Tb   * C::* MTb = &C::b;
Tw   * C::* MTw = &C::w;


template <class T> class D {
  T a;
};
D<int> dobj;
class E {
public:
  D<int> *dp;
};
E eobj={&dobj};
E *peobj = &eobj;

D<int> * E::* Tdobj = &E::dp;


int f(int a){ return a+1; }
class F {
public:
  int (*fp)(int);
}fobj={&f};
F *pfobj = &fobj;

int (* (F::* Mfunc))(int) = &F::fp;


template <class T2> int tf(T2 a){
  return a;
}
template <class T> class G {
public:
  T a;
  int (*tfp)(int);
};
G<int> gobj = {1,&tf};
G<int> *pgobj = &gobj;
int (*(G<int>::* Mtf))(int) = &G<int>::tfp;

#include <stdio.h>
int main(){

  puts("ok");
}
