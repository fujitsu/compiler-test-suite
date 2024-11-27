#include <stdio.h>

#define MAX_S1 (0x7f)
#define MAX_U1 (0xff)
#define MAX_S2 (0x7ffff)
#define MAX_U2 (0xfffff)
#define MAX_S4 (0x7ffffffff)
#define MAX_U4 (0xfffffffff)
#define MAX_S8 (0x7fffffffffffffffLL)
#define MAX_U8 (0xffffffffffffffffULL)
#define MAX(a,b) ((int)(a) > (int)(b) ? (a):(b))
#define UMAX(a,b) ((unsigned int)(a) > (unsigned int)(b) ? (a):(b))

typedef  struct all_t{
  signed char sc;
  unsigned char uc;
  float       f;
  short ss;
  unsigned short us;
  double     d;
  int si;
  unsigned int ui;

  int        sl;
  unsigned int ul;
  long long   sll;
  unsigned long long ull;
}ALL_T;

ALL_T x,y;

extern void sub(),p();
int main()
{
  x.sc = 1;
  x.uc = 1;
  x.f  = (float)1.0;
  x.ss = 1;
  x.us = 1;
  x.d  = (double)1.0;
  x.si = 1;
  x.ui = 1;

  x.sl = 1;
  x.ul = 1;
  x.sll = 1;
  x.ull = 1;

  sub();

  y.sc =    x.sc ;
  y.uc =    x.uc ;
  y.f  =    x.f  ;
  y.ss =    x.ss ;
  y.us =    x.us ;
  y.d  =    x.d  ;
  y.si =    x.si ;
  y.ui =    x.ui ;

  y.sl =    x.sl ;
  y.ul =    x.ul ;
  y.sll =   x.sll;
  y.ull =   x.ull;

  p(&y);
}

void sub()
{
  signed char sc = x.sc+1;
  unsigned char uc= x.uc+1;
  float       f = x.f+1.0;
  short ss = x.ss+1;
  unsigned short us=x.us+1;
  double     d=x.d + 1.0;
  int si= x.si + 1;
  unsigned int ui = x.si+1;

  int        sl=x.sl + 1;
  unsigned int ul=x.ul +1 ;
  long long   sll=x.sll +1 ;
  unsigned long long ull = x.ull+1;
  
  f += d;
  d += f;

  sc = MAX(x.sc,MAX_S1);
  uc = UMAX(x.uc,MAX_U1);
  ss = MAX(MAX_S2,x.ss);
  us = UMAX(MAX_U2,x.us);
  si = MAX(MAX_S4,x.si);
  ui = UMAX(x.ui,MAX_U4);
  sl = MAX(MAX_S8,x.sl);
  ul = UMAX(MAX_U8,x.sl);
  sll = MAX(MAX_S8,x.sll);
  ull = UMAX(x.ull,MAX_U8);

  x.sc = sc;
  x.uc = uc;
  x.f  = f;
  x.ss = ss;
  x.us = us;
  x.d  = d;
  x.si = si;
  x.ui = ui;

  x.sl = sl;
  x.ul = ul;
  x.sll = sll;
  x.ull = ull;

  return;
}  

void p(x)
ALL_T *x;
{
  printf("%d\n",x->sc);
  printf("%u\n",x->uc);
  printf("%d\n",x->ss);
  printf("%u\n",x->us);
  printf("%d\n",x->si);
  printf("%u\n",x->ui);
  printf("%d\n",x->sl);
  printf("%u\n",x->ul);
  printf("%lld\n",x->sll);
  printf("%llu\n",x->ull);
}
  
  

