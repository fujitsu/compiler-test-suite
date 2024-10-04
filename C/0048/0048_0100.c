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

 typedef signed long sl_type;
 signed long exsl=-2147483648;
 extern signed long exa[3]={ 2147483647, -2147483648, 0 };
 signed long static stsl;
 struct sttag { int a;  signed long sl; } ;

 int 
test1_1 (void)
 {
 signed long sl;
 auto signed long asl;
 register signed long rsl;
 signed long sla[4] = { 32768, 2147483647, -2147483648, -1 };
 signed long slfnc();
 signed long const csl=0;
 signed long volatile vsl;
 signed long *slp;
 struct tagx  *stp;
 struct sttag st = { -2147483648, -1 };
 struct tagx {long s; signed long sl;}stx={-2147483648,2147483647};

 sl = 2147483647;
 if (sl != 0x7fffffff)
     printf(" ***  TEST 1-1 ERROR ***\n");

 asl = sl+1;
#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (asl != 2147483648)
#else
 if (asl != -2147483648)
#endif
     printf(" ***  TEST 1-2 ERROR ***\n");

 rsl = -sl;
 if (rsl != -2147483647)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (sla[1]+*(sla+2)+sla[0]+*(sla+3) != 32766)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (slfnc(31) != 0x80000000)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (csl != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vsl = sl | 0;
 if (vsl != 2147483647)
     printf(" ***  TEST 1-7 ERROR ***\n");

 slp = sla;
 if (slp[2]+*(slp+1) != slp[3])
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->sl != -(st.a+1))
     printf(" ***  TEST 1-9 ERROR ***\n");

 if (st.sl != sla[3])
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test1_2 (void)
 {
 sl_type *slp=exa;
 volatile sl_type auto avsl=2147483647;
 signed const register long rcsl=-32768;
 volatile signed auto long const avcsl=32768;

 if (slp[0]+slp[1]+slp[2] != -1)
     printf(" ***  TEST 2-1 ERROR ***\n");

 if (-avsl-1 != -2147483648)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcsl != -avcsl)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stsl = exsl;
 if (stsl != -2147483648)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test1_3 (void)
 {
 signed long slfnc(signed long sl);
 extern signed long slfnc2(signed long *sl);
 signed long sl=31,*slp=&sl;

#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (slfnc(sl) != 2147483648)
#else
 if (slfnc(sl) != -2147483648)
#endif
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (slfnc2(slp) != -1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 signed long extern slfnc(signed long slvar)
 {
 signed long sl=1;
 return sl<<slvar;
 }

 signed long 
slfnc2 (signed long *slvarp)
 {
 signed long sl=-2147483648;
 return sl>>*slvarp;
 }

 typedef signed long int sli_type;
 signed long int exsli=-2147483648;
 extern signed long int exai[3]={ 2147483647, -2147483648, 0 };
 signed long int static stsli;
 struct sttag2 { int a;  signed long int sli; } ;

 int 
test2_1 (void)
 {
 signed long int sli;
 auto signed long int asli;
 register signed long int rsli;
 signed long int slia[4] = { 32768, 2147483647, -2147483648, -1 };
 signed long int slifnc();
 signed long int const csli=0;
 signed long int volatile vsli;
 signed long int *slip;
 struct tagx  *stp;
 struct sttag2 st = { -2147483648, -1 };
 struct tagx {signed long int s,sli;}stx={-2147483648,2147483647};

 sli = 2147483647;
 if (sli != 0x7fffffff)
     printf(" ***  TEST 4-1 ERROR ***\n");

 asli = sli+1;
#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (asli != 2147483648)
#else
 if (asli != -2147483648)
#endif
     printf(" ***  TEST 4-2 ERROR ***\n");

 rsli = -sli;
 if (rsli != -2147483647)
     printf(" ***  TEST 4-3 ERROR ***\n");

 if (slia[1]+*(slia+2)+slia[0]+*(slia+3) != 32766)
     printf(" ***  TEST 4-4 ERROR ***\n");

 if (slifnc(31) != 0x80000000)
     printf(" ***  TEST 4-5 ERROR ***\n");

 if (csli != exai[2])
     printf(" ***  TEST 4-6 ERROR ***\n");

 vsli = sli | 0;
 if (vsli != 2147483647)
     printf(" ***  TEST 4-7 ERROR ***\n");

 slip = slia;
 if (slip[2]+*(slip+1) != slip[3])
     printf(" ***  TEST 4-8 ERROR ***\n");

 stp=&stx;
 if (stp->sli != -(st.a+1))
     printf(" ***  TEST 4-9 ERROR ***\n");

 if (st.sli != slia[3])
     printf(" ***  TEST 4-10 ERROR ***\n");
 }

 int 
test2_2 (void)
 {
 sli_type *slip=exai;
 volatile sli_type auto avsli=2147483647;
 signed const register long int rcsli=-32768;
 volatile signed int auto long const avcsli=32768;

 if (slip[0]+slip[1]+slip[2] != -1)
     printf(" ***  TEST 5-1 ERROR ***\n");

 if (-avsli-1 != -2147483648)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rcsli != -avcsli)
     printf(" ***  TEST 5-3 ERROR ***\n");

 stsli = exsli;
 if (stsli != -2147483648)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test2_3 (void)
 {
 signed long int slifnc(signed long int sli);
 extern signed long int slifnc2(signed long int *sli);
 signed long int sli=31,*slip=&sli;

#if INT64||LONG64 || __x86_64__ || __aarch64__
 if (slifnc(sli) != 2147483648)
#else
 if (slifnc(sli) != -2147483648)
#endif
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (slifnc2(slip) != -1)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 signed long int extern slifnc(signed long int slivar)
 {
 signed long int sli=1;
 return sli<<slivar;
 }

 signed long int 
slifnc2 (signed long int *slivarp)
 {
 signed long int sli=-2147483648;
 return sli>>*slivarp;
 }
