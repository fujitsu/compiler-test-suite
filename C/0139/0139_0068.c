#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test2_3 (void);
int test2_2 (void);
int test2_1 (void);
int test1_3 (void);
int test1_2 (void);
int test1_1 (void);
  
  
  
  
  
  
  
  

int main (void)
 {
 printf(" *** \n");
 test1_1();
 test1_2();
 test1_3();
 test2_1();
 test2_2();
 test2_3();
 printf(" *** \n");
exit (0);
 }

  
 typedef unsigned long ul_type;
#if (A32 || I64 || LLP )   
 unsigned long exul=4294967295;
 extern unsigned long exa[3]={ 4294967295, 2147483648, 0 };
#else A64
 unsigned long exul=18446744073709551615;
 extern unsigned long exa[3]={ 18446744073709551615, 9223372036854775808, 0 };
#endif
 unsigned long static stul;
 struct sttag { int a;  unsigned long ul; } ;

 int test1_1 (void)
 {
 unsigned long ul;
 auto unsigned long aul;
 register unsigned long rul;
#if (A32 || I64 || LLP )  
 unsigned long ula[4] = { 32768, 2147483647, -2147483648, -1 };
#else A64
 unsigned long ula[4] = { 2147483648, 9223372036854775807, -9223372036854775808,
 -1 };
#endif
 unsigned long ulfnc();
 unsigned long const cul=0;
 unsigned long volatile vul;
 unsigned long *ulp;
 struct tagx  *stp;
#if (A32 || I64 || LLP )  
 struct sttag st = { -1, 4294967295 };
#else A64
 struct sttag st = { -1, 18446744073709551615 };
#endif
 struct tagx {
        long s;
        unsigned long ul;
 } stx =
#if (A32 || I64 || LLP )  
         { -2147483648, 4294967295 };
#else A64
         { -9223372036854775808, 18446744073709551615 };
#endif

#if (A32 || I64 || LLP )  
 ul = 4294967295;
 if (ul != 0xffffffff)
#else A64
 ul = 18446744073709551615;
 if (ul != 0xffffffffffffffff)
#endif
     printf(" *** \n");

 aul = ul+1;
 if (aul != 0)
     printf(" *** \n");

#if (A32 || I64 || LLP )  
 rul = ul-2147483647;
 if (rul != 2147483648)
#else A64
 rul = ul-9223372036854775807;
 if (rul != 9223372036854775808)
#endif
     printf(" *** \n");

#if (A32 || I64 || LLP )  
 if (ula[1]+*(ula+2)-ula[0]+*(ula+3) != 4294934526)
#else A64
 if (ula[1]+*(ula+2)-ula[0]+*(ula+3) != 18446744071562067966)
#endif
     printf(" *** \n");

#if (A32 || I64 || LLP )  
 if (ulfnc(31) != 0x80000000)
#else A64
 if (ulfnc(63) != 0x8000000000000000)
#endif
     printf(" *** \n");

 if (cul != exa[2])
     printf(" *** \n");

 vul = ul | 0;
#if (A32 || I64 || LLP )  
 if (vul != 4294967295)
#else A64
 if (vul != 18446744073709551615)
#endif
     printf(" *** \n");

 ulp = ula;
 if (ulp[2]+*(ulp+1) != st.ul)
     printf(" *** \n");

 stp=&stx;
 if (stp->ul != st.a)
     printf(" *** \n");

 if (st.ul != ula[3])
     printf(" *** \n");
 }

 int test1_2 (void)
 {
 ul_type *ulp=exa;
#if ILP
 volatile ul_type auto avul=9223372036854775807;
#else (A32 || I64 || LLP || LP || A64)  
 volatile ul_type auto avul=2147483647;
#endif
#if (A32 || I64 || LLP )  
 unsigned const register long rcul=2147483647;
 volatile unsigned auto long const avcul=2147483648;
#else A64
 unsigned const register long rcul=9223372036854775807;
 volatile unsigned auto long const avcul=9223372036854775808;
#endif

 if (ulp[0]-ulp[1]-ulp[2] != exa[1]-1)
     printf(" *** \n");

#if ILP
 if (avul+1 != 9223372036854775808)
#else (A32 || I64 || LLP || LP || A64)  
 if (avul+1 != 2147483648)
#endif
     printf(" *** \n");

 if (rcul != avcul-1)
     printf(" *** \n");

 stul = exul;
#if (A32 || I64 || LLP )  
 if (stul != 4294967295)
#else A64
 if (stul != 18446744073709551615)
#endif
     printf(" *** \n");

 }

 int test1_3 (void)
 {
 unsigned long ulfnc(unsigned long ul);
 extern unsigned long ulfnc2(unsigned long *ul);
#if (A32 || I64 || LLP )  
 unsigned long ul=31,*ulp=&ul;
#else A64
 unsigned long ul=63,*ulp=&ul;
#endif

#if (A32 || I64 || LLP )  
 if (ulfnc(ul) != 2147483648)
#else A64
 if (ulfnc(ul) != 9223372036854775808)
#endif
     printf(" *** \n");

 if (ulfnc2(ulp) != 1)
     printf(" *** \n");
 }

 unsigned long extern ulfnc(unsigned long ulvar)
 {
 unsigned long ul=1;
 return ul<<ulvar;
 }

 unsigned long 
ulfnc2 (unsigned long *ulvarp)
 {
#if (A32 || I64 || LLP )  
 unsigned long ul=2147483648;
#else A64
 unsigned long ul=9223372036854775808;
#endif
 return ul>>*ulvarp;
 }

  
 typedef unsigned long int uli_type;
#if (A32 || I64 || LLP )  
 unsigned long int exuli=4294967295;
 extern unsigned long int exai[3]={ 4294967295, 2147483648, 0 };
#else A64
 unsigned long int exuli=18446744073709551615;
 extern unsigned long int exai[3]={ 18446744073709551615, 9223372036854775808, 0
 };
#endif
 unsigned long int static stuli;
 struct sttag2 { int a;  unsigned long int uli; } ;

 int test2_1 (void)
 {
 unsigned long int uli;
 auto unsigned long int auli;
 register unsigned long int ruli;
#if (A32 || I64 || LLP )  
 unsigned long int ulia[4] = { 32768, 2147483647, 2147483648, -1 };
#else A64
 unsigned long int ulia[4] = { 2147483648, 9223372036854775807, 9223372036854775808, -1 };
#endif
 unsigned long int ulifnc();
 unsigned long int const culi=0;
 unsigned long int volatile vuli;
 unsigned long int *ulip;
 struct tagx  *stp;
#if (A32 || I64 || LLP )  
 struct sttag2 st = { -1, 4294967295 };
#else A64
 struct sttag2 st = { -1, 18446744073709551615 };
#endif
 struct tagx {
        long int s;
        unsigned long int uli;
 } stx =
#if (A32 || I64 || LLP )  
        { -2147483648, 4294967295 };
#else A64
        { -9223372036854775808, 18446744073709551615 };
#endif

#if (A32 || I64 || LLP )  
 uli = 4294967295;
 if (uli != 0xffffffff)
#else A64
 uli = 18446744073709551615;
 if (uli != 0xffffffffffffffff)
#endif
     printf(" *** \n");

 auli = uli+1;
 if (auli != 0)
     printf(" *** \n");

#if (A32 || I64 || LLP )  
 ruli = uli-2147483647;
 if (ruli != 2147483648)
#else A64
 ruli = uli-9223372036854775807;
 if (ruli != 9223372036854775808)
#endif
     printf(" *** \n");

#if (A32 || I64 || LLP )  
 if (ulia[1]+*(ulia+2)-ulia[0]+*(ulia+3) != 4294934526)
#else A64
 if (ulia[1]+*(ulia+2)-ulia[0]+*(ulia+3) != 18446744071562067966)
#endif
     printf(" *** \n");

#if (A32 || I64 || LLP )  
 if (ulifnc(31) != 0x80000000)
#else A64
 if (ulifnc(63) != 0x8000000000000000)
#endif
     printf(" *** \n");

 if (culi != exai[2])
     printf(" *** \n");

 vuli = uli | 0;
#if (A32 || I64 || LLP )  
 if (vuli != 4294967295)
#else A64
 if (vuli != 18446744073709551615)
#endif
     printf(" *** \n");

 ulip = ulia;
 if (ulip[2]+*(ulip+1) != st.uli)
     printf(" *** \n");

 stp=&stx;
 if (stp->uli != st.a)
     printf(" *** \n");

 if (st.uli != ulia[3])
     printf(" *** \n");
 }

 int test2_2 (void)
 {
 uli_type *ulip=exai;
#if ILP
 volatile uli_type auto avuli=9223372036854775807;
#else (A32 || I64 || LLP || LP || A64)  
 volatile uli_type auto avuli=2147483647;
#endif
#if (A32 || I64 || LLP )  
 unsigned const register long int rculi=2147483647;
 volatile unsigned auto long int const avculi=2147483648;
#else A64
 unsigned const register long int rculi=9223372036854775807;
 volatile unsigned auto long int const avculi=9223372036854775808;
#endif

 if (ulip[0]-ulip[1]-ulip[2] != exai[1]-1)
     printf(" *** \n");

#if ILP
 if (avuli+1 != 9223372036854775808)
#else (A32 || I64 || LLP || LP || A64)  
 if (avuli+1 != 2147483648)
#endif
     printf(" *** \n");

 if (rculi != avculi-1)
     printf(" *** \n");

 stuli = exuli;
#if (A32 || I64 || LLP)  
 if (stuli != 4294967295)
#else (ILP || LP)
 if (stuli != 18446744073709551615)
#endif
     printf(" *** \n",stuli);

 }

 int test2_3 (void)
 {
 unsigned long int ulifnc(unsigned long int uli);
 extern unsigned long int ulifnc2(unsigned long int *uli);
#if (A32 || I64 || LLP )  
 unsigned long int uli=31,*ulip=&uli;
#else A64
 unsigned long int uli=63,*ulip=&uli;
#endif

#if (A32 || I64 || LLP )  
 if (ulifnc(uli) != 2147483648)
#else A64
 if (ulifnc(uli) != 9223372036854775808)
#endif
     printf(" *** \n");

 if (ulifnc2(ulip) != 1)
     printf(" *** \n");
 }

 unsigned long int extern ulifnc(unsigned long int ulivar)
 {
 unsigned long int uli=1;
 return uli<<ulivar;
 }

 unsigned long int ulifnc2 (unsigned long int *ulivarp)
 {
#if (A32 || I64 || LLP )  
 unsigned long int uli=2147483648;
#else A64
 unsigned long int uli=9223372036854775808;
#endif
 return uli>>*ulivarp;
 }

