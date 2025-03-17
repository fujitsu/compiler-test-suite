class C {
public:
  int i;
};

template <class T> class TMPLC {
public:
  T a;
};

class A {
public:
  int                i_;
  C		     cobj;
  TMPLC<char>	     tcobj;
  int                i_2;
  C		     cobj2;
  TMPLC<char>	     tcobj2;
  int                i_3;
  C		     cobj3;
  TMPLC<char>	     tcobj3;
  int                fi_();
  int                fi_2();
  int                fi_3();
}aobj;
A& aobjr = aobj;
A* aobjp = &aobj;

int A::fi_(){return 1;};
int A::fi_2(){return 2;};
int A::fi_3(){return 3;};

typedef  int                A::*Ti_;
typedef  C		    A::*TC;
typedef  TMPLC<char>	    A::*TLC;

typedef  int                (A::*Tfi_)();

Ti_  a1=&A::i_;
TC   a2=&A::cobj;
TLC  a3=&A::tcobj;

Ti_  *ap1=&a1;
TC   *ap2=&a2;
TLC  *ap3=&a3;

Ti_  **app1=&ap1;
TC   **app2=&ap2;
TLC  **app3=&ap3;

Ti_  &ar1=a1;
TC   &ar2=a2;
TLC  &ar3=a3;

Ti_  **&appr1=app1;
TC   **&appr2=app2;
TLC  **&appr3=app3;

Ti_  aa1[3] = {&A::i_, &A::i_2, &A::i_3};
TC   aa2[3] = {&A::cobj, &A::cobj2, &A::cobj3};
TLC  aa3[3] = {&A::tcobj, &A::tcobj2, &A::tcobj3};

Ti_  *aap1[2] = {0, &a1};
TC   *aap2[2] = {0, &a2};
TLC  *aap3[2] = {0, &a3};

Tfi_  f       = &A::fi_;
Tfi_  &fr     =f;
Tfi_  *fp     = &f;
Tfi_  **fpp   = &fp;
Tfi_  **&fppr =fpp;
Tfi_  fa[3]   = {&A::fi_, &A::fi_2, &A::fi_3};
Tfi_  *fap[2] = {0, &f};

#include <stdio.h>
int main(){

  puts("ok");
}
