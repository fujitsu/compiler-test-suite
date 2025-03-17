typedef  char               &Tc_;
typedef  signed char        &Tc_s;
typedef  unsigned char      &Tc_u;
typedef  short              &Ts_;
typedef  signed short       &Ts_s;
typedef  unsigned short     &Ts_u;
typedef  int                &Ti_;
typedef  signed int         &Ti_s;
typedef  unsigned int       &Ti_u;
typedef  long               &Tl_;
typedef  signed long        &Tl_s;
typedef  unsigned long      &Tl_u;
typedef  long long          &TL_;
typedef  signed long long   &TL_s;
typedef  unsigned long long &TL_u;
typedef  float              &Tf;
typedef  double             &Td;
typedef  long double        &Tld;
typedef  bool               &Tb;
typedef  wchar_t            &Tw;

class C {
public:
  int i;
};
typedef C &TC;
C aTC;

template <class T> class TMPLC {
public:
  T a;
};
TMPLC<char> aTLC;
typedef TMPLC<char> &TLC;

typedef  char               (&Tfc_)();
typedef  signed char        (&Tfc_s)();
typedef  unsigned char      (&Tfc_u)();
typedef  short              (&Tfs_)();
typedef  signed short       (&Tfs_s)();
typedef  unsigned short     (&Tfs_u)();
typedef  int                (&Tfi_)();
typedef  signed int         (&Tfi_s)();
typedef  unsigned int       (&Tfi_u)();
typedef  long               (&Tfl_)();
typedef  signed long        (&Tfl_s)();
typedef  unsigned long      (&Tfl_u)();
typedef  long long          (&TfL_)();
typedef  signed long long   (&TfL_s)();
typedef  unsigned long long (&TfL_u)();
typedef  float              (&Tff)();
typedef  double             (&Tfd)();
typedef  long double        (&Tfld)();
typedef  bool               (&Tfb)();
typedef  wchar_t            (&Tfw)();

char               aTc_;
signed char        aTc_s;
unsigned char      aTc_u;
short              aTs_;
signed short       aTs_s;
unsigned short     aTs_u;
int                aTi_;
signed int         aTi_s;
unsigned int       aTi_u;
long               aTl_;
signed long        aTl_s;
unsigned long      aTl_u;
long long          aTL_;
signed long long   aTL_s;
unsigned long long aTL_u;
float              aTf;
double             aTd;
long double        aTld;
bool               aTb;
wchar_t            aTw;

Tc_  a01=aTc_;
Tc_s a02=aTc_s;
Tc_u a03=aTc_u;
Ts_  a04=aTs_;
Ts_s a05=aTs_s;
Ts_u a06=aTs_u;
Ti_  a07=aTi_;
Ti_s a08=aTi_s;
Ti_u a09=aTi_u;
Tl_  a10=aTl_;
Tl_s a11=aTl_s;
Tl_u a12=aTl_u;
TL_  a13=aTL_;
TL_s a14=aTL_s;
TL_u a15=aTL_u;
Tf   a16=aTf;
Td   a17=aTd;
Tld  a18=aTld;
Tb   a19=aTb;
Tw   a20=aTw;
TC   a21=aTC;
TLC  a22=aTLC;
long double a;

char ff01(){return (char)a;}
signed char ff02(){return (signed char)a;}
unsigned char ff03(){return (unsigned char)a;}
short ff04(){return (short)a;}
signed short ff05(){return (signed short)a;}
unsigned short ff06(){return (unsigned short)a;}
int ff07(){return (int)a;}
signed int ff08(){return (signed int)a;}
unsigned int ff09(){return (unsigned int)a;}
long ff10(){return (long)a;}
signed long ff11(){return (signed long)a;}
unsigned long ff12(){return (unsigned long)a;}
long long ff13(){return (long long)a;}
signed long long ff14(){return (signed long long)a;}
unsigned long long ff15(){return (unsigned long long)a;}
float ff16(){return (float)a;}
double ff17(){return (double)a;}
long double ff18(){return (long double)a;}
bool ff19(){return (bool)a;}
wchar_t ff20(){return (wchar_t)a;}

Tfc_  fr01=ff01;
Tfc_s fr02=ff02;
Tfc_u fr03=ff03;
Tfs_  fr04=ff04;
Tfs_s fr05=ff05;
Tfs_u fr06=ff06;
Tfi_  fr07=ff07;
Tfi_s fr08=ff08;
Tfi_u fr09=ff09;
Tfl_  fr10=ff10;
Tfl_s fr11=ff11;
Tfl_u fr12=ff12;
TfL_  fr13=ff13;
TfL_s fr14=ff14;
TfL_u fr15=ff15;
Tff   fr16=ff16;
Tfd   fr17=ff17;
Tfld  fr18=ff18;
Tfb   fr19=ff19;
Tfw   fr20=ff20;

#include <stdio.h>
int main(){

  puts("ok");
}
