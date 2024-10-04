#include <stdio.h>
int test2_3 (void);
int test2_2 (void);
int test2_1 (void);
int test1_3 (void);
int test1_2 (void);
int test1_1 (void);
int main()
 {
 printf(" ***  TEST START ***\n");
 test1_1();
 test1_2();
 test1_3();
 test2_1();
 test2_2();
 test2_3();
 printf(" ***  TEST END ***\n");
 }

 typedef unsigned long ul_type;
 unsigned long exul=4294967295;
 extern unsigned long exa[3]={ 4294967295, 2147483648, 0 };
 unsigned long static stul;
 struct sttag { int a;  unsigned long ul; } ;

 int 
test1_1 (void)
 {
 unsigned long ul;
 auto unsigned long aul;
 register unsigned long rul;
 unsigned long ula[4] = { 32768, 2147483647, 2147483648, -1 };
 unsigned long ulfnc();
 unsigned long const cul=0;
 unsigned long volatile vul;
 unsigned long *ulp;
 struct tagx  *stp;
 struct sttag st = { -1, 4294967295 };
 struct tagx {
        long s;
        unsigned long ul;
 } stx = { -2147483648, 4294967295 };

 ul = 4294967295;
 if (ul != 0xffffffff)
     printf(" ***  TEST 1-1 ERROR ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
 aul = ul+0xffffffff00000001;
#else
 aul = ul+1;
#endif
 if (aul != 0)
     printf(" ***  TEST 1-2 ERROR ***\n");

 rul = ul-2147483647;
 if (rul != 2147483648)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (ula[1]+*(ula+2)-ula[0]+*(ula+3) != 4294934526)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (ulfnc(31) != 0x80000000)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (cul != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vul = ul | 0;
 if (vul != 4294967295)
     printf(" ***  TEST 1-7 ERROR ***\n");

 ulp = ula;
 if (ulp[2]+*(ulp+1) != st.ul)
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (stp->ul != 0xffffffff)
#else
 if (stp->ul != st.a)
#endif
     printf(" ***  TEST 1-9 ERROR ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (st.ul != 0xffffffff)
#else
 if (st.ul != ula[3])
#endif
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test1_2 (void)
 {
 ul_type *ulp=exa;
 volatile ul_type auto avul=2147483647;
 unsigned const register long rcul=2147483647;
 volatile unsigned auto long const avcul=2147483648;

 if (ulp[0]-ulp[1]-ulp[2] != exa[1]-1)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (avul+1 != 2147483648)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcul != avcul-1)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stul = exul;
 if (stul != 4294967295)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test1_3 (void)
 {
 unsigned long ulfnc(unsigned long ul);
 extern unsigned long ulfnc2(unsigned long *ul);
 unsigned long ul=31,*ulp=&ul;

 if (ulfnc(ul) != 2147483648)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (ulfnc2(ulp) != 1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 unsigned long extern ulfnc(unsigned long ulvar)
 {
 unsigned long ul=1;
 return ul<<ulvar;
 }

 unsigned long 
ulfnc2 (unsigned long *ulvarp)
 {
 unsigned long ul=2147483648;
 return ul>>*ulvarp;
 }

 typedef unsigned long int uli_type;
 unsigned long int exuli=4294967295;
 extern unsigned long int exai[3]={ 4294967295, 2147483648, 0 };
 unsigned long int static stuli;
 struct sttag2 { int a;  unsigned long int uli; } ;

 int 
test2_1 (void)
 {
 unsigned long int uli;
 auto unsigned long int auli;
 register unsigned long int ruli;
 unsigned long int ulia[4] = { 32768, 2147483647, 2147483648, -1 };
 unsigned long int ulifnc();
 unsigned long int const culi=0;
 unsigned long int volatile vuli;
 unsigned long int *ulip;
 struct tagx  *stp;
 struct sttag2 st = { -1, 4294967295 };
 struct tagx {
        long int s;
        unsigned long int uli;
 } stx = { -2147483648, 4294967295 };

 uli = 4294967295;
 if (uli != 0xffffffff)
     printf(" ***  TEST 4-1 ERROR ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
 auli = uli+0xffffffff00000001;
#else
 auli = uli+1;
#endif
 if (auli != 0)
     printf(" ***  TEST 4-2 ERROR ***\n");

 ruli = uli-2147483647;
 if (ruli != 2147483648)
     printf(" ***  TEST 4-3 ERROR ***\n");

 if (ulia[1]+*(ulia+2)-ulia[0]+*(ulia+3) != 4294934526)
     printf(" ***  TEST 4-4 ERROR ***\n");

 if (ulifnc(31) != 0x80000000)
     printf(" ***  TEST 4-5 ERROR ***\n");

 if (culi != exai[2])
     printf(" ***  TEST 4-6 ERROR ***\n");

 vuli = uli | 0;
 if (vuli != 4294967295)
     printf(" ***  TEST 4-7 ERROR ***\n");

 ulip = ulia;
 if (ulip[2]+*(ulip+1) != st.uli)
     printf(" ***  TEST 4-8 ERROR ***\n");

 stp=&stx;
#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (stp->uli != 0xffffffff)
#else
 if (stp->uli != st.a)
#endif
     printf(" ***  TEST 4-9 ERROR ***\n");

#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (st.uli != 0xffffffff)
#else
 if (st.uli != ulia[3])
#endif
     printf(" ***  TEST 4-10 ERROR ***\n");
 }

 int 
test2_2 (void)
 {
 uli_type *ulip=exai;
 volatile uli_type auto avuli=2147483647;
 unsigned const register long int rculi=2147483647;
 volatile unsigned auto long int const avculi=2147483648;

 if (ulip[0]-ulip[1]-ulip[2] != exai[1]-1)
     printf(" ***  TEST 5-1 ERROR ***\n");

 if (avuli+1 != 2147483648)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rculi != avculi-1)
     printf(" ***  TEST 5-3 ERROR ***\n");

 stuli = exuli;
 if (stuli != 4294967295)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test2_3 (void)
 {
 unsigned long int ulifnc(unsigned long int uli);
 extern unsigned long int ulifnc2(unsigned long int *uli);
 unsigned long int uli=31,*ulip=&uli;

 if (ulifnc(uli) != 2147483648)
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (ulifnc2(ulip) != 1)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 unsigned long int extern ulifnc(unsigned long int ulivar)
 {
 unsigned long int uli=1;
 return uli<<ulivar;
 }

 unsigned long int 
ulifnc2 (unsigned long int *ulivarp)
 {
 unsigned long int uli=2147483648;
 return uli>>*ulivarp;
 }

