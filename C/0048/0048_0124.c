#include <stdio.h>

 typedef  char  fnc_type();
 int exf1();
 signed exfs();
 unsigned exuf();
 extern  int exexf();

 static volatile long long int exvllif();

 int exi=0;
 struct tag1 { int i,j; };
 union  tag2 { int i,j; } un = { 100 };
 enum   tag3 { en1, en2 } en = en2;
int main()
 {
 signed s; unsigned u;
 double df();
 long long int lli;
 long double ld;

 struct tag1 fncst();
 struct tag1 *fncstp();
 struct tag1 st={ 0xffffffff,0x7fffffff },st2;

 union  tag2 fncun();

 enum   tag3 fncen();

 int  *fncip();

 int *ip;
 char *cp;
 void fncv();

 const int ci = 0x7fffffff;
 volatile int vi = 0x80000000;
 const  int fncc();

 long int volatile const cvli = -1;
 volatile  int fncvl();

 printf(" ***  test start ****** \n");

 if (exf1())
     printf(" ***  test 1  error ***\n");

 if (exfs())
     printf(" ***  test 2  error ***\n");

 if (exuf())
     printf(" ***  test 3  error ***\n");

 if (exexf())
     printf(" ***  test 4  error ***\n");
 if (exvllif())
     printf(" ***  test 5  error ***\n");
 s = 8; u = 0xffffffff;
 if (df(s,u) != .125)
     printf(" ***  test 6  error ***\n");

 lli = 100; ld = 1.5;
 st2 = fncst(lli,ld);
 if (st2.i != 1e4 || st2.j != 150)
     printf(" ***  test 7  error ***\n");

 if (fncstp(&st) == 0 || st.i != 0x7fffffff || st.j)
     printf(" ***  test 8  error ***\n");

 un = fncun(st);
 if (un.i != 99 || un.j != 99)
     printf(" ***  test 9  error ***\n");

 if (fncen(un) != 0)
     printf(" ***  test 10 error ***\n");

 ip = fncip(en);
 exi++;
 if (*ip != 6)
     printf(" ***  test 11 error ***\n");

 cp = "abc";
 fncv(ip,cp,cp+1,cp+2,cp+3);
 if (exi != 5)
     printf(" ***  test 12 error ***\n");

 if (fncc(ci,vi) != -1)
     printf(" ***  test 13 error ***\n");

 if (fncvl(cvli) != -1)
     printf(" ***  test 14 error ***\n");

 printf(" ***  test end ***\n");
 }

 int extern exf1()
 {
 exi++;
 if (exi != 1)
     return 1;
 else
     return 0;
 }

 int exfs()
 {
 exi++;
 if (exi != 2)
     return 1;
 else
     return 0;
 }

 unsigned exuf()
 {
 exi++;
 if (exi != 3)
     return 1;
 else
     return 0;
 }

 int exexf()
 {
 exi++;
 if (exi != 4)
     return 1;
 else
     return 0;
 }
 volatile long long int exvllif()
 {
 exi++;
 if (exi != 5)
     return 1;
 else
     return 0;
 }
 double df(si,ui)
 signed int si;
 unsigned int ui;
 {
 double d = 1.0;

 if (si != 8 || ui != 4294967295)
     return 0;
 else
     return d/si;
 }

 struct tag1 fncst(lli,ld)
 long long int lli;
 long double ld;
 {
 struct tag1 st = {0, 0};
 if (lli != 100 || ld != 1.5)
     return st;

 st.i = lli*100;
 st.j = ld*lli;
 return st;
 }
 struct tag1 *fncstp(stp)
 struct tag1 *stp;
 {
 if (stp->i != -1 || stp->j != 2147483647)
     return 0;

 stp->i = stp->j;
 stp->j = 0;
 return stp;
 }

 union tag2 fncun(st)
 struct tag1 st;
 {
 union tag2 unx = {0, 0};
 if (st.i != 2147483647 || st.j)
     return unx;

 unx.i = un.i-1;
 return unx;
 }

 enum tag3 fncen(un)
 union tag2 un;
 {
 enum tag3 en;
 if (un.i != 99 || un.j != 99)
     return 1;

 en = en1;
 return en;
 }

 int *fncip(en)
 enum tag3 en;
 {
 if (en != 1)
     return 0;

 return &exi;
 }

 void fncv(ip,cp1,cp2,cp3,cp4)
 int *ip;
 char *cp1,*cp2,*cp3,*cp4;
 {
 if (*ip != 5)
     exi--;

 if (*cp1 != 'a' || *cp2 != 'b' ||
     *cp3 != 'c' || *cp4 != '\0')
     exi--;

 return;
 }

 const  int fncc (c,v)
 const int c; int volatile v;
 {
 const  int cc=c+v;
 return cc;
 }

 volatile  int fncvl(cvli)
 const volatile long int cvli;
 {
 if (cvli != -1)
     return 1;

 return cvli;
 }
