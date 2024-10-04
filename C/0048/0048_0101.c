#include <stdio.h>
int test2_3 (void);
int test2_1 (void);
int test1_3 (void);
int test1_1 (void);

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif

#define long_long  long long
int main()
 {
 printf(" ***  TEST START ***\n");
 test1_1();
 test1_3();
 test2_1();
 test2_3();
 printf(" ***  TEST END ***\n");
 }

 typedef signed long_long sll_type;
 signed long_long exsll=2147483647LL;
 extern signed long_long exa[3]={ 2147483647LL, -2147483648LL, 0LL };
 signed long_long static stsll;
 struct sttag { int a;  signed long_long sll; } ;

 int 
test1_1 (void)
 {
 signed long_long sll;
 auto signed long_long asll;
 register signed long_long rsll;
 signed long_long slla[4] = {32768LL,2147483647LL,-2147483648LL,-1LL};
 signed long_long sllfnc();
 signed long_long const csll=0;
 signed long_long volatile vsll;
 signed long_long *sllp;
 struct tagx  *stp;
 struct sttag st = { -2147483648, -1LL };
 struct tagx {
         long_long ll;
         signed long_long sll;
  }stx={-2147483648LL,2147483647LL};
 union utag {
         int i[2];
         signed long_long sll;
         unsigned long_long ull;
 } un;

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 un.i[1] = 0x7fffffff; un.i[0] = 0xffffffff;
#else
 un.i[0] = 0x7fffffff; un.i[1] = 0xffffffff;
#endif
 sll = un.sll;
 if (sll != un.ull)
     printf(" ***  TEST 1-1 ERROR ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 un.i[1] = 0x80000000; un.i[0] = 0x00000000;
#else
 un.i[0] = 0x80000000; un.i[1] = 0x00000000;
#endif
 asll = sll+1;
 if (asll != un.sll)
     printf(" ***  TEST 1-2 ERROR ***\n");

 rsll = -sll;
 if (rsll != un.sll+1)
     printf(" ***  TEST 1-3 ERROR ***\n");

 if (slla[1]+*(slla+2)+slla[0]+*(slla+3) != 32766)
     printf(" ***  TEST 1-4 ERROR ***\n");

 if (sllfnc(63LL) != un.sll)
     printf(" ***  TEST 1-5 ERROR ***\n");

 if (csll != exa[2])
     printf(" ***  TEST 1-6 ERROR ***\n");

 vsll = sll | 0;
 if (vsll != un.sll-1)
     printf(" ***  TEST 1-7 ERROR ***\n");

 slla[0]=un.sll;  slla[1]=un.sll+1;  slla[2]=0;
 sllp = slla;
 if (sllp[0]-sllp[1]-sllp[3] != sllp[2])
     printf(" ***  TEST 1-8 ERROR ***\n");

 stp=&stx;
 if (stp->ll+stp->sll != st.sll)
     printf(" ***  TEST 1-9 ERROR ***\n");

 un.i[0] = 0xffffffff;  un.i[1] = 0xffffffff;
 if (st.sll != un.sll)
     printf(" ***  TEST 1-10 ERROR ***\n");
 }

 int 
test1_2 (void)
 {
 sll_type *sllp=exa;
 volatile sll_type auto avsll;
 signed const register long_long rcsll=-32768LL;
 volatile signed auto long_long const avcsll=32768LL;
 union utag {
     int i[2];
     signed long_long sll;
 } un,un2;

 if (sllp[0]+sllp[1]+sllp[2] != -1)
     printf(" ***  TEST 2-1 ERROR ***\n");

 un.i[0] = 0x7fffffff;  un.i[1] = 0xffffffff;
 un2.i[0] = 0x80000000;  un2.i[1] = 0x00000000;
 avsll = un.sll;
 if (-avsll-1 != un2.sll)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcsll != -avcsll)
     printf(" ***  TEST 2-3 ERROR ***\n");

 un2.i[0] = 0x00000000; un2.i[1] = 0x80000000;
 stsll = exsll+1;
 if (stsll != un2.sll)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test1_3 (void)
 {
 signed long_long sllfnc(signed long_long sll);
 extern signed long_long sllfnc2(signed long_long *sll);
 signed long_long sll=63LL,*sllp=&sll;
 union utag {
     int i[2];
     signed long_long sll;
 } un;


#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 un.i[1] = 0x80000000; un.i[0] = 0x00000000;
#else
 un.i[0] = 0x80000000; un.i[1] = 0x00000000;
#endif
 if (sllfnc(sll) != un.sll)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (sllfnc2(sllp) != -1)
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 signed long_long extern sllfnc(signed long_long sllvar)
 {
 signed long_long sll=1;
 return sll<<sllvar;
 }

 signed long_long 
sllfnc2 (signed long_long *sllvarp)
 {
 union utag {
       int i[2];
       long_long int ll;
 }

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
  un = {0x00000000,0x80000000};
#else
  un = {0x80000000,0x00000000};
#endif
 signed long_long sll=un.ll;
 return sll>>*sllvarp;
 }

 typedef signed long_long int slli_type;
 signed long_long int exslli=2147483647LL;
 extern signed long_long int exai[3]={ 2147483647LL, -2147483648LL,0LL};
 signed long_long int static stslli;
 struct sttag2 { int a;  signed long_long int slli; } ;

 int 
test2_1 (void)
 {
 signed long_long int slli;
 auto signed long_long int aslli;
 register signed long_long int rslli;
 signed long_long int sllia[4]={32768LL,2147483647LL,-2147483648LL,-1LL};
 signed long_long int sllifnc();
 signed long_long int const cslli=0;
 signed long_long int volatile vslli;
 signed long_long int *sllip;
 struct tagx  *stp;
 struct sttag2 st = { -2147483648, -1LL };
 struct tagx {
        long_long ll;
        signed long_long int slli;
 }stx={-2147483648LL,2147483647LL};
 union utag {
      unsigned int i[2];
      signed long_long int slli;
      unsigned long_long int ulli;
 }un;

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 un.i[1] = 0x7fffffff;  un.i[0] = 0xffffffff;
#else
 un.i[0] = 0x7fffffff;  un.i[1] = 0xffffffff;
#endif
 slli = un.slli;
 if (slli != un.ulli)
     printf(" ***  TEST 4-1 ERROR ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
 un.i[1] = 0x80000000; un.i[0] = 0x00000000;
#else
 un.i[0] = 0x80000000; un.i[1] = 0x00000000;
#endif
 aslli = slli+1;
 if (aslli != un.slli || aslli > 0)
     printf(" ***  TEST 4-2 ERROR ***\n");

 rslli = -slli;
 if (rslli != un.slli+1)
     printf(" ***  TEST 4-3 ERROR ***\n");

 if (sllia[1]+*(sllia+2)+sllia[0]+*(sllia+3) != 32766LL)
     printf(" ***  TEST 4-4 ERROR ***\n");

 if (sllifnc(63LL) != un.slli)
     printf(" ***  TEST 4-5 ERROR ***\n");

 if (cslli != exai[2])
     printf(" ***  TEST 4-6 ERROR ***\n");

 vslli = slli | 0;
 if (vslli != un.slli-1)
     printf(" ***  TEST 4-7 ERROR ***\n");

 sllia[0]=un.slli;  sllia[1]=un.slli+1;  sllia[2]=0;
 sllip = sllia;
 if (sllip[0]-sllip[1]-sllip[3] != sllip[2])
     printf(" ***  TEST 4-8 ERROR ***\n");

 stp=&stx;
 if (stp->ll+stp->slli != st.slli)
     printf(" ***  TEST 4-9 ERROR ***\n");

 un.i[0] = 0xffffffff;  un.i[1] = 0xffffffff;
 if (st.slli != un.slli)
     printf(" ***  TEST 4-10 ERROR ***\n");
 }

 int 
test2_2 (void)
 {
 slli_type *sllip=exai;
 volatile slli_type auto avslli;
 signed const register long_long int rcslli=2147483648LL;
 volatile signed int auto long_long const avcslli=-2147483648LL;
 union utag {
     int i[2];
     signed long_long int slli;
 } un,un2;

 if (sllip[0]+sllip[1]+sllip[2] != -1LL)
     printf(" ***  TEST 5-1 ERROR ***\n");

 un.i[0] = 0x7fffffff;  un.i[1] = 0xffffffff;
 un2.i[0] = 0x80000000;  un2.i[1] = 0x00000000;
 avslli = un.slli;
 if (-avslli-1 != un2.slli)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rcslli != -avcslli)
     printf(" ***  TEST 5-3 ERROR ***\n");

 un2.i[0] = 0x00000000; un2.i[1] = 0x80000000;
 stslli = exslli+1;
 if (stslli != un2.slli)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test2_3 (void)
 {
 signed long_long int sllifnc(signed long_long int slli);
 extern signed long_long int sllifnc2(signed long_long int *slli);
 signed long_long int slli=63LL,*sllip=&slli;
 union utag {
     unsigned int i[2];
     signed long_long int slli;
 }

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
  un = { 0x00000000, 0x80000000 };
#else
  un = { 0x80000000, 0x00000000 };
#endif

 if (sllifnc(slli) != un.slli)
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (sllifnc2(sllip) != -1)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 signed long_long int extern sllifnc(signed long_long int sllivar)
 {
 signed long_long int slli=1;
 return slli<<sllivar;
 }

 signed long_long int 
sllifnc2 (signed long_long int *sllivarp)
 {
 union utag {
     unsigned int i[2];
     signed long_long int slli;
 }
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
  un = { 0x00000000, 0x80000000 };
#else
  un = { 0x80000000, 0x00000000 };
#endif
 signed long_long int slli=un.slli;
 return slli>>*sllivarp;
 }
