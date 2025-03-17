class A {
public:
  char               c_;
  signed char        *c_s;
  unsigned char      c_u[3];
  short              s_;
  signed short       *s_s;
  unsigned short     s_u[3];
  int                i_;
  signed int         *i_s;
  unsigned int       i_u[3];
  long               l_;
  signed long        *l_s;
  unsigned long      l_u[3];
  long long          L_;
  signed long long   *L_s;
  unsigned long long L_u[3];
  float              f;
  double             *d;
  long double        ld[3];
  bool               b;
  wchar_t            w;
}aobj;

A *paobj = &aobj;

class A2 {
public:
  char               (A::* Mc_);
  signed char       *(A::* Mc_s);
  unsigned char      (A::* Mc_u)[3];
  short              (A::* Ms_);
  signed short      *(A::* Ms_s);
  unsigned short     (A::* Ms_u)[3];
  int                (A::* Mi_);
  signed int        *(A::* Mi_s);
  unsigned int       (A::* Mi_u)[3];
  long               (A::* Ml_);
  signed long       *(A::* Ml_s);
  unsigned long      (A::* Ml_u)[3];
  long long          (A::* ML_);
  signed long long  *(A::* ML_s);
  unsigned long long (A::* ML_u)[3];
  float              (A::* Mf);
  double            *(A::* Md);
  long double        (A::* Mld)[3];
  bool               (A::* Mb);
  wchar_t            (A::* Mw);
  A2():Mc_(&A::c_),Mc_s(&A::c_s),Mc_u(&A::c_u),
       Ms_(&A::s_),Ms_s(&A::s_s),Ms_u(&A::s_u),
       Mi_(&A::i_),Mi_s(&A::i_s),Mi_u(&A::i_u),
       Ml_(&A::l_),Ml_s(&A::l_s),Ml_u(&A::l_u),
       ML_(&A::L_),ML_s(&A::L_s),ML_u(&A::L_u),
       Mf(&A::f),Md(&A::d),Mld(&A::ld),Mb(&A::b),Mw(&A::w){}
}a2obj;

A2 *pa2obj = &a2obj;

char                 A::* (A2::* MMc_) = &A2::Mc_;
signed char        * A::* (A2::* MMc_s) = &A2::Mc_s;
unsigned char       (A::* (A2::* MMc_u))[3] = &A2::Mc_u;
short                A::* (A2::* MMs_) = &A2::Ms_;
signed short       * A::* (A2::* MMs_s) = &A2::Ms_s;
unsigned short      (A::* (A2::* MMs_u))[3] = &A2::Ms_u;
int                  A::* (A2::* MMi_) = &A2::Mi_;
signed int         * A::* (A2::* MMi_s) = &A2::Mi_s;
unsigned int        (A::* (A2::* MMi_u))[3] = &A2::Mi_u;
long                 A::* (A2::* MMl_) = &A2::Ml_;
signed long        * A::* (A2::* MMl_s) = &A2::Ml_s;
unsigned long       (A::* (A2::* MMl_u))[3] = &A2::Ml_u;
long long            A::* (A2::* MML_) = &A2::ML_;
signed long long   * A::* (A2::* MML_s) = &A2::ML_s;
unsigned long long  (A::* (A2::* MML_u))[3] = &A2::ML_u;
float                A::* (A2::* MMf) = &A2::Mf;
double             * A::* (A2::* MMd) = &A2::Md;
long double         (A::* (A2::* MMld))[3] = &A2::Mld;
bool                 A::* (A2::* MMb) = &A2::Mb;
wchar_t              A::* (A2::* MMw) = &A2::Mw;


class B {
public:
  A aobj;
}bobj;
B *pbobj = &bobj;
class B2 {
public:
  A B::* ap;
  B2():ap(&B::aobj){}
}b2obj;
B2 *pb2obj = &b2obj;

A B::* (B2::* Maobj) = &B2::ap;


typedef  char               Tc_;

class C {
public:
  Tc_   c_[3];
}cobj;
C *pcobj = &cobj;
class C2 {
public:
  Tc_ (C::* Mc_)[3];
  C2():Mc_(&C::c_){}
}c2obj;
C2 *pc2obj = &c2obj;

Tc_  (C::*(C2::* MMTc_))[3] = &C2::Mc_;


template <class T> class D {
  T a;
};
D<int> dobj;
class E {
public:
  D<int> *dp;
}eobj;
E *peobj = &eobj;
class E2 {
public:
  D<int> * E::* Mdp;
  E2():Mdp(&E::dp){}
};
E2 e2obj;
E2 *pe2obj = &e2obj;

D<int> * E::* (E2::* Tdobj) = &E2::Mdp;


int f(int a){ return a+1; }
class F {
public:
  int (*fp[3])(int);
}fobj;
F *pfobj = &fobj;
class F2 {
public:
  int (*(F::*Mfp)[3])(int);
  F2():Mfp(&F::fp){}
}f2obj;
F2 *pf2obj = &f2obj;
int (* (F::*(F2::* Mfunc))[3])(int) = &F2::Mfp;


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
template <class T> class G2 {
public:
  T a;
  int (*(G<T>::*Mtfp)[3])(int);
  G2<T>():Mtfp(&G<T>::tfp){}
};
G2<int> g2obj;
G2<int> *pg2obj = &g2obj;
int (*(G<int>::*(G2<int>::* MMtfp))[3])(int) = &G2<int>::Mtfp;

#include <stdio.h>
int main(){

  puts("ok");
}
