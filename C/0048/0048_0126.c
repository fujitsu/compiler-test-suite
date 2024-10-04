#include <stdio.h>
int fnc5(int i, double d, int i2);
int fnc4(double d);
int test2 (void);
int test1 (void);

#if __aarch64__ || __x86_64__
#define ARCHI_64
#endif
int main()
 {
 printf(" ***  test start ****** \n");
 test1();
 test2();
 printf(" ***  test end ***\n");
 }

 int fnc1(),fnc3(),fnc6();
 int fnc2();
 int func4(),func5();
#if defined(ARCHI_64)
 long exi=0;
#else
 int exi=0;
#endif

 int 
test1 (void)
 {
 char c;
 short s;
 float f;
 signed int si;
 unsigned int ui;
 double d;

 si=-1; ui=0xffffffff;
 if (fnc1(si,ui))
     printf(" ***  test 1  error ***\n");

 si=-1; c=0x7f;
 if (fnc2(si,c))
     printf(" ***  test 2  error ***\n");

 s=-1;
 if (fnc3(s,si))
     printf(" ***  test 3  error ***\n");

 f=.125;
 if (fnc4(f))
     printf(" ***  test 4  error ***\n");

 if (fnc5(s,f,c))
     printf(" ***  test 5  error ***\n");

#if defined(ARCHI_64)
 exi = (long)&exi;
#else
 exi = (int)&exi;
#endif

 if (fnc6(exi))
     printf(" ***  test 6  error ***\n");

 }

 int extern fnc1(unsigned int ui, signed int si)
 {
 if (ui != 0xffffffff || ui < 0 || si != -1)
     return 1;
 else
     return 0;
 }

 int fnc2(int i, int i2)
 {
 if (i != -1 || i2 != 127)
     return 1;
 else
     return 0;
 }

 int fnc3(int i, int i2)
 {
 if (i != -1 || i2 != -1)
     return 1;
 else
     return 0;
 }

 int fnc4(double d)
 {
 if (d != .125)
     return 1;
 else
     return 0;
 }

 int fnc5(int i, double d, int i2)
 {
 if (i != -1 || d != .125 || i2 != 127)
     return 1;
 else
     return 0;
 }

#if defined(ARCHI_64)
 int fnc6(long i)
#else
 int fnc6(int i)
#endif
 {
#if defined(ARCHI_64)
 if ((long*)i != &exi)
#else
 if ((int*)i != &exi)
#endif
     return 1;
 else
     return 0;
 }


 int fnca(int,short,signed short,unsigned short,char,signed char); 
 int fncb(double);

 int 
test2 (void)
 {
 long int li;
 signed long int sli;
 unsigned long int uli;
 int i;
 signed int si;
 unsigned int ui;
 double d;

 ui=0xffffffff; si=-1; li=-1; sli=-1; uli=ui; i=-1;
 if (fnca(ui,si,li,sli,uli,i))
     printf(" ***  test 1  error ***\n");

 d=.125;
 if (fncb(d))
     printf(" ***  test 2  error ***\n");
 }

 int extern 
fnca (int i, short s, signed short ss, unsigned short us, char c, signed char sc)
 {
#if S_CHAR || __aarch64__
 if (i != -1 || s != -1 || ss != -1 ||
     us != 65535 || c != -1 || sc != -1)
#else
 if (i != -1 || s != -1 || ss != -1 ||
     us != 65535 || c != 255 || sc != -1)
#endif
     return 1;
 else
     return 0;
 }

 int 
fncb (double f)
 {
 if (f != .125)
     return 1;
 else
     return 0;
 }
