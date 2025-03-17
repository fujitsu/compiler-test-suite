char func_c(){
  char c=0;
  return c;
}
signed char func_sc(){
  signed char c=0;
  return c;
}
unsigned char func_usc(){
  unsigned char c=0;
  return c;
}
short func_s(){
  short s=0;
  return s;
}
unsigned short func_us(){
  unsigned short s=0;
  return s;
}
int  func_i(){
  int i=0;
  return i;
}
unsigned int  func_ui(){
  unsigned int ui=0;
  return ui;
}
long int func_li(){
  long int li=0;
  return li;
}
unsigned long int func_uli(){ 
  unsigned long int uli=0;
  return uli;
}
long long int func_lli(){
  long int lli=0;
  return lli;
}
unsigned long long int func_ulli(){ 
  unsigned long long int ulli=0;
  return ulli;
}
float func_f(){
  float f=0;
  return f;
}
double func_d(){
  double d=0;
  return d;
}
long double func_ld(){
  long double ld=0;
  return ld;
}
struct ST {
  int s;
};
struct ST func_st(){
  struct ST st={0};
  return st;
}
union UT{
 int u;
};

union UT func_ut(){
  union UT ut={0};
  return ut;
}

enum ET{ e1,e2};
enum ET func_et(){
   enum ET et=e1;
   return  et;
 }
char * func_cp(){
   char *p="test";
   return p;
}
void (* func_fp())(){
  void (*p)()=0;
  return  p;
}
int (*func_ary())[10]{
  int a[10];
  return &a;
}
struct ST * func_stp(){
   struct ST *p=0;
   return p;
 }
class CT {
 public:
 int i;
};
CT func_ct(){
 CT obj; obj.i=1;
 return obj;
}
bool func_bl(){
 bool b=true;
 return b;
}
wchar_t func_wc(){
 wchar_t wc=0;
 return wc;
}
int x;
int & func_ref(){
  int &y=x;
  return y;
}
CT obj;
CT & func_ref_ct(){
   obj.i=1;
   return obj;
 }
template<class T> class TMP_CL{
   T x;
 };
TMP_CL<int> func_tmp_cl(){
    TMP_CL<int> x;
    return x;
  }

#include <stdio.h>
int main(){
 func_c();
 func_sc();
 func_usc();
 func_s();
 func_us();
 func_ui();
 func_li();
 func_uli();
 func_lli();
 func_ulli();
 func_f();
 func_d();
 func_ld();
 func_st();
 func_ut();
 func_et();
 func_cp();
 func_fp();
 func_ary();
 func_stp();
 func_ct();
 func_bl();
 func_wc();
 func_ref();
 func_ref_ct();
 func_tmp_cl();
 puts("ok");
 return 0;
}
