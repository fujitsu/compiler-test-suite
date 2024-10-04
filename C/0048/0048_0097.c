#include <stdio.h>
int test6 (void);
int test5 (void);
int test4 (void);
int test3 (void);
int test2 (void);
int test1 (void);

 typedef long long ll_type;
 long long exll=-2147483648LL;
 extern long long exa[3]={ 2147483647LL, -2147483648LL, -1LL };
 long long static stll;
 struct sttag { int a;  long long ll; } ;
 union exutag {
     int  i[2];
     long long  ll;
 } exun,exun2;
int 
main (void)
 {
 printf(" ***  TEST START *** \n");
 test1();
 test2();
 test3();
 test4();
 test5();
 test6();
 printf(" ***  TEST END *** \n");
 }

 int 
test1 (void)
 {
 long long ll;
 auto long long all;
 register long long rll;
 signed long long sll;
 long long unsigned ull;
 long long lla[5];
 long long llfnc();
 long long const cll=0;
 long long volatile vll;
 long long *llp;
 struct tagx  *stp;
 struct sttag st = { 2147483647, -2147483648LL };
 struct tagx { char c ; long long ll; } stx = { 127, -2147483648LL };
 union utag {
     int i[2];
     long long ll;
     unsigned long long ull;
 }
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 un={0xffffffff,0x7fffffff},un2={0x00000000,0x80000000};
#else
 un={0x7fffffff,0xffffffff},un2={0x80000000,0x00000000};
#endif

 ll = un.ll;
 if (ll != un.ll)
     printf(" ***  TEST 1-1 ERROR ***\n");

#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 un.i[1] = 0xffffffff;
#else
 un.i[0] = 0xffffffff;
#endif

 all = ll-un.ull;
 if (all != un2.ll || all > 0)
     printf(" ***  TEST 1-2 ERROR ***\n");

 rll = ll + all;
 if (rll != un.ll || rll > 0)
     printf(" ***  TEST 1-3 ERROR ***\n");

 sll = rll;
 if (sll != -1)
     printf(" ***  TEST 1-4 ERROR ***\n");

 ull = un.ull;
 if (ull != un.ull || ull < 0)
     printf(" ***  TEST 1-5 ERROR ***\n");

 lla[0] = un2.ll;  lla[1] = un.ll;  lla[2] = 0.1;
 lla[3] = 1;       lla[4] = ll;
 if (lla[0]+*(lla+4)+lla[1]+*(lla+2)+lla[3] != -1)
     printf(" ***  TEST 1-6 ERROR ***\n");

 if (llfnc(rll) != -1)
     printf(" ***  TEST 1-7 ERROR ***\n");

 if (cll != lla[2])
     printf(" ***  TEST 1-8 ERROR ***\n");

 vll = ll | 0;
 if (vll != ll)
     printf(" ***  TEST 1-9 ERROR ***\n");

 llp = lla;
 if (*llp+*(llp+4)+llp[2] != -1)
     printf(" ***  TEST 1-10 ERROR ***\n");

 stp=&stx;
 if (stp->ll != -2147483648LL)
     printf(" ***  TEST 1-11 ERROR ***\n");

 st.ll = -1;
 if (st.ll != un.ll)
     printf(" ***  TEST 1-12 ERROR ***\n");
 }

 int 
test2 (void)
 {
 ll_type *llp=exa;
 volatile ll_type auto avll;
 long long const register rcll=-2147483647LL;
 volatile long long const auto avcll=2147483647LL;

#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 exun.i[0] = 0x00000000;  exun.i[1] = 0x00000001;
#else
 exun.i[0] = 0x00000001;  exun.i[1] = 0x00000000;
#endif
 if (llp[0]-llp[1]-llp[2] != exun.ll)
     printf(" ***  TEST 2-1 ERROR ***\n");

 avll = exun.ll;
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 exun2.i[1] = 0xffffffff; exun2.i[0] = 0x00000000;
#else
 exun2.i[0] = 0xffffffff; exun2.i[1] = 0x00000000;
#endif
 if (-avll != exun2.ll)
     printf(" ***  TEST 2-2 ERROR ***\n");

 if (rcll != -avcll)
     printf(" ***  TEST 2-3 ERROR ***\n");

 stll = exll-1;
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 exun2.i[0] = 0x7fffffff;
#else
 exun2.i[1] = 0x7fffffff;
#endif
 if (stll != exun2.ll)
     printf(" ***  TEST 2-4 ERROR ***\n");

 }

 int 
test3 (void)
 {
 long long llfnc(long long ll);
 extern long long llfnc2(long long *ll);
 long long *llp=&exun.ll;

 exun.i[0] = 0x7fffffff;  exun.i[1] = 0xffffffff;
 if (llfnc(exun.ll) != exun.ll)
     printf(" ***  TEST 3-1 ERROR ***\n");

 if (llfnc2(llp) != -1 )
     printf(" ***  TEST 3-2 ERROR ***\n");
 }

 long long extern llfnc(long long llvar)
 {
 long long ll=-1;
 return ll&llvar;
 }

 long long 
llfnc2 (long long *llvarp)
 {
 long long ll=-1;
 return ll|*llvarp;
 }

 typedef long long int lli_type;
 long long int exlli=-2147483648LL;
 extern long long int exai[3]={ 2147483647LL, -2147483648LL, -1LL };
 long long int static stlli;
 struct sttag2 { int a;  long long int ll; } ;

 int 
test4 (void)
 {
 long long int ll;
 auto long long int all;
 register long long int rll;
 signed long long int sll;
 long long int unsigned ull;
 long long int lla[5];
 long long int llifnc();
 long long int const cll=0LL;
 long long int volatile vll;
 long long int *llp;
 struct tagx  *stp;
 struct sttag2 st = { 2147483647, -2147483648LL };
 struct tagx { char c ; long long int ll; } stx = {127,-2147483648LL};
 union utag {
     int i[2];
     long long int ll;
     unsigned long long int ull;
 }
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
  un={0xffffffff,0x7fffffff},un2={0x00000000,0x80000000};
#else
  un={0x7fffffff,0xffffffff},un2={0x80000000,0x00000000};
#endif

 ll = un.ll;
 if (ll != un.ll)
     printf(" ***  TEST 4-1 ERROR ***\n");

#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 un.i[1] = 0xffffffff;
#else
 un.i[0] = 0xffffffff;
#endif
 all = ll-un.ull;
 if (all != un2.ll || all > 0)
     printf(" ***  TEST 4-2 ERROR ***\n");

 rll = ll + all;
 if (rll != un.ll || rll > 0)
     printf(" ***  TEST 4-3 ERROR ***\n");

 sll = rll;
 if (sll != -1)
     printf(" ***  TEST 4-4 ERROR ***\n");

 ull = un.ull;
 if (ull != un.ull || ull < 0)
     printf(" ***  TEST 4-5 ERROR ***\n");

 lla[0] = un2.ll;  lla[1] = un.ll;  lla[2] = 0.1;
 lla[3] = 1;       lla[4] = ll;
 if (lla[0]+*(lla+4)+lla[1]+*(lla+2)+lla[3] != -1)
     printf(" ***  TEST 4-6 ERROR ***\n");

 if (llifnc(rll) != -1)
     printf(" ***  TEST 4-7 ERROR ***\n");

 if (cll != lla[2])
     printf(" ***  TEST 4-8 ERROR ***\n");

 vll = ll | 0;
 if (vll != ll)
     printf(" ***  TEST 4-9 ERROR ***\n");

 llp = lla;
 if (*llp+*(llp+4)+llp[2] != -1)
     printf(" ***  TEST 4-10 ERROR ***\n");

 stp=&stx;
 if (stp->ll != -2147483648LL)
     printf(" ***  TEST 4-11 ERROR ***\n");

 st.ll = -1;
 if (st.ll != un.ll)
     printf(" ***  TEST 4-12 ERROR ***\n");
 }

 int 
test5 (void)
 {
 lli_type *llp=exai;
 volatile lli_type auto avll;
 long long int const register rcll=-2147483648LL;
 volatile long long int const auto avcll=2147483647LL;

#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 exun.i[1] = 0x00000001;  exun.i[0] = 0x00000000;
#else
 exun.i[0] = 0x00000001;  exun.i[1] = 0x00000000;
#endif
 if (llp[0]-llp[1]-llp[2] != exun.ll)
     printf(" ***  TEST 5-1 ERROR ***\n");

 avll = exun.ll;
#if _WIN32 || __i386__ || __i386 ||__x86_64__  || __aarch64__
 exun2.i[1] = 0xffffffff;  exun2.i[0] = 0x00000000;
#else
 exun2.i[0] = 0xffffffff;  exun2.i[1] = 0x00000000;
#endif
 if (-avll != exun2.ll)
     printf(" ***  TEST 5-2 ERROR ***\n");

 if (rcll != -avcll-1)
     printf(" ***  TEST 5-3 ERROR ***\n");

 stlli = exlli-1;
#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 exun2.i[0] = 0x7fffffff;
#else
 exun2.i[1] = 0x7fffffff;
#endif
 if (stlli != exun2.ll)
     printf(" ***  TEST 5-4 ERROR ***\n");

 }

 int 
test6 (void)
 {
 long long int llifnc(long long int ll);
 extern long long int llifnc2(long long int *ll);
 long long int *llip=&exun.ll;

 exun.i[0] = 0x7fffffff;  exun.i[1] = 0xffffffff;
 if (llifnc(exun.ll) != exun.ll)
     printf(" ***  TEST 6-1 ERROR ***\n");

 if (llifnc2(llip) != -1)
     printf(" ***  TEST 6-2 ERROR ***\n");
 }

 long long int extern llifnc(long long int llvar)
 {
 long long int ll=-1;
 return ll&llvar;
 }

 long long int 
llifnc2 (long long int *llvarp)
 {
 long long int ll=-1;
 return ll|*llvarp;
 }
